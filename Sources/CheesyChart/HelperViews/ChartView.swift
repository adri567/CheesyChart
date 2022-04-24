//
//  ChartView.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import SwiftUI

public struct ChartView: View {
    
    // MARK: - Environment
    @EnvironmentObject var vm: CheesyChartViewModel
    
    // MARK: - Properties
    let setup: SetupChart
    private let lineColor: Color
    
    init(setup: SetupChart) {
        self.setup = setup
        
        let priceChange = (setup.data.last ?? 0) - (setup.data.first ?? 0)
        lineColor = priceChange >= 0 ? setup.chartLineColorOnHigh : setup.lineChartColorOnLow
    }
    
    // MARK: - Body
    public var body: some View {
        GeometryReader { geometry in
            ChartPriceLabelView(setup: setup, geometry: geometry)
            Path { path in
                for index in setup.data.indices {
                    let xPosition: CGFloat = (index == 0) ? 0.0 : geometry.size.width / CGFloat(setup.data.count) * CGFloat(index + 1)
                    
                    let yAxis = setup.maxY - setup.minY
                    
                    let yPosition = (1 - CGFloat((setup.data[index] - setup.minY) / yAxis)) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: xPosition, y: yPosition))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .trim(from: 0, to: setup.animateChart ? vm.animationPercentage : 1) // Animates from 0 to 1
            .stroke(lineColor, style: StrokeStyle(lineWidth: setup.chartLineWidth, lineCap: .round, lineJoin: .round))
            .shadow(color: setup.lineShadow1, radius: 10, x: 0.0, y: 10)
            .shadow(color: setup.lineShadow2.opacity(0.5), radius: 10, x: 0.0, y: 20)
            .shadow(color: setup.lineShadow3.opacity(0.2), radius: 10, x: 0.0, y: 30)
            .shadow(color: setup.lineShadow4.opacity(0.2), radius: 10, x: 0.0, y: 40)
        }
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(setup: SetupChart(data: [40418.81975626143,40358.29100171332,40311.94860353836,40395.59953867149,40462.54282793972,40448.17612798462,40458.58923942812,40455.23665815623,40521.23221627563,40413.61655528863,40464.02922206458,40421.93435923091,40198.14473341098]))
            .environmentObject(CheesyChartViewModel())
    }
}
