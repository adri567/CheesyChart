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
    @State private var textWidth: Double = 0.0
    let setup: SetupChart
    let geometry: GeometryProxy
    
    // MARK: - Body
    public var body: some View {
        Text(checkInput())
            .padding(4)
            .font(.caption)
            .foregroundColor(setup.chartPriceLabelFontColor)
            .background(
                GeometryReader { textGeometry in
                    Rectangle()
                        .fill(.clear)
                        .frame(maxWidth: .infinity)
                        .getTextWidth(textGeometry.size.width)
                }
            )
            .onPreferenceChange(PriceLabelPreferenceKey.self, perform: { value in
                textWidth = value
            })
            .background(setup.chartPriceLabelColor)
            .cornerRadius(setup.chartPriceLabelCornerRadius)
            .position(
                x: vm.calculatePriceLabelBorder(xLocation: vm.touchLocation.x, geometry: geometry, textWidth: textWidth),
                y: setup.chartPriceLabelYAxies
            )
            .shadow(color: setup.chartPriceLabelShadow, radius: 5, x: 0.0, y: 0)
            .background(
                Rectangle()
                    .fill(setup.chartPriceIndicatorColor)
                    .frame(width: 1, height: geometry.size.height)
                    .position(
                        x: vm.calculateIndicatorBorder(xLocation: vm.touchLocation.x, geometry: geometry),
                        y: geometry.size.height / 2
                    )
            )
            .opacity(vm.hide ? 1 : 0)
            .zIndex(1)
    }
    
    /// Only nesessary if we are using a custom view with a binding to track the draged label price. This is important if the user creates multiple buttons to switch different chart data. It could happen that some data has more chart data. If so the app crashes. To avoid it we are checking if the vm.point is higher that the chart data count. If yes, we asign a blank String otherwise the normal price.
    /// - Returns: Formatted price as a String
    private func checkInput() -> String {
        return vm.point > setup.data.count ? "" : setup.data[vm.point].asCurrencyWithTwoDecimals()
    }
}

//struct PriceLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        PriceLabelView(setup: SetupChart(), geometry: .constant(), touchLocation: Binding<CGPoint>, hide: Binding<Bool>, point: Binding<Int>)
//    }
//}
