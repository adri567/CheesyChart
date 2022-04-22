//
//  ChartPriceLabelView.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import SwiftUI

public struct ChartPriceLabelView: View {
    
    // MARK: - Environment
    @EnvironmentObject var vm: CheesyChartViewModel
    
    // MARK: - Properties
    let setup: SetupChart
    let geometry: GeometryProxy
    @State private var textWidth: Double = 0.0
    
    // MARK: - Body
    public var body: some View {
            Text(vm.point > 0 && vm.point <= setup.data.count - 1 ? "\(setup.data[vm.point])" : "")
                .padding(4)
                .background(
                    GeometryReader { textGeometry in
                        makeView(geometry: textGeometry)
                    }
                )
                .background(setup.chartPriceLabelColor)
                .cornerRadius(setup.chartPriceLabelCornerRadius)
                .position(x: vm.calculateBorder(xLocation: vm.touchLocation.x, geometry: geometry, textWidth: textWidth), y: setup.chartPriceLabelYAxies)
                .foregroundColor(setup.chartPriceLabelFontColor)
                .font(.caption)
                .background(
                    Rectangle()
                        .fill(setup.chartPriceIndicatorColor)
                        .frame(width: 1, height: geometry.size.height)
                        .position(x: vm.touchLocation.x, y: geometry.size.height / 2)
                )
                .opacity(vm.hide ? 1 : 0)
                .zIndex(1)
    }
    
    private func makeView(geometry: GeometryProxy) -> some View {
        DispatchQueue.main.async {
            self.textWidth = geometry.size.width
        }
        return Rectangle().fill(.clear)
    }
}

//struct PriceLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        PriceLabelView(setup: SetupChart(), geometry: .constant(), touchLocation: <#Binding<CGPoint>#>, hide: <#Binding<Bool>#>, point: <#Binding<Int>#>)
//    }
//}
