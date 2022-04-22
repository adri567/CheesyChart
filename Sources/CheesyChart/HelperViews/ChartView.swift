//
//  Chart.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import SwiftUI

public struct ChartView: View {
    
    let setup: SetupChart
    
    public var body: some View {
        GeometryReader { geometry in
            
            ChartPriceLabelView(setup: setup, geometry: geometry)
            
            Path { path in
                for index in setup.data.indices {
                    let xPosition = geometry.size.width / CGFloat(setup.data.count) * CGFloat(index + 1)
                    
                    let yAxis = setup.maxY - setup.minY
                    
                    let yPosition = (1 - CGFloat((setup.data[index] - setup.minY) / yAxis)) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: xPosition, y: yPosition))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .stroke(setup.chartLineColor, style: StrokeStyle(lineWidth: setup.chartLineWidth, lineCap: .round, lineJoin: .round))
            .shadow(color: setup.lineShadow1, radius: 10, x: 0.0, y: 10)
            .shadow(color: setup.lineShadow2.opacity(0.5), radius: 10, x: 0.0, y: 20)
            .shadow(color: setup.lineShadow3.opacity(0.2), radius: 10, x: 0.0, y: 30)
            .shadow(color: setup.lineShadow4.opacity(0.2), radius: 10, x: 0.0, y: 40)
        }
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(setup: SetupChart())
    }
}
