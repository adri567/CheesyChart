//
//  ChartHeader.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

struct ChartHeader: View {
    
    // MARK: - Properties
    var setup: SetupChart
    
    // MARK: - Body
    var body: some View {
        if setup.showChartHeader {
            HStack {
                if setup.showHeaderImage {
                    Image(systemName: "dollarsign.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                NameLabelView(setup: setup)
                Spacer()
                PriceLabelView(setup: setup)
            }
            .padding()
            .background(setup.chartHeaderColor)
        }
    }
}

struct ChartHeader_Previews: PreviewProvider {
    static var previews: some View {
        ChartHeader(setup: SetupChart(name: "Bitcoin", data: [19.999232]))
            .previewLayout(.sizeThatFits)
            .environmentObject(CheesyChartViewModel())
    }
}
