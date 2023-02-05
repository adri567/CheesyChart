//
//  PriceLabelView.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

struct PriceLabelView: View {
    
    // MARK: - Environment
    @EnvironmentObject var vm: CheesyChartViewModel
    
    // MARK: - Properties
    var setup: SetupChart
    
    // MARK: - Body
    var body: some View {
        Text(setup.data[vm.point].asCurrencyWithTwoDecimals(currencyIdentifier: setup.currencyIdentifier))
            .foregroundColor(setup.chartHeaderFontColor)
            .font(.footnote)
    }
}

struct PriceLabelView_Previews: PreviewProvider {
    static var previews: some View {
        PriceLabelView(setup: SetupChart(data:[49.9999999]))
            .environmentObject(CheesyChartViewModel())
    }
}
