//
//  ChartYAxiesStatsView.swift
//  
//
//  Created by Adrian Suthold on 23.04.22.
//

import SwiftUI

struct ChartYAxiesStatsView: View {
    
    var setup: SetupChart
    
    private var minY: Double = 0.0
    private var maxY: Double = 0.0
    
    // Calculates the top middle ligh average
    private var middleHigh: Double {
        (((maxY + minY) / 2) + maxY) / 2
    }
    
    // Calculates the bottom middle low average
    private var middleLow: Double {
        (((maxY + minY) / 2) + minY) / 2
    }
    
    // Calculates the average
    private var average: Double {
        (setup.maxY + setup.minY) / 2
    }
    
    init(setup: SetupChart) {
        self.setup = setup
        minY = setup.minY
        maxY = setup.maxY
    }
    
    var body: some View {
        VStack(spacing: 0) {
            switch setup.chartBackground {
            case . none:
                background0
            case .cb1:
                background1
            case .cb2:
                background2
            case .cb3:
                background3
            case .cb4:
                background4
            case .cb5:
                background5
            }
        }
        .background(Color.clear)
    }
    
    private var background0: some View {
        Rectangle()
            .fill(Color.clear)
    }
    
    private var background1: some View {
        VStack(spacing: 0) {
            chartYAxiesText(setup.maxY)
            Spacer()
            chartYAxiesText(average)
            Spacer()
            chartYAxiesText(setup.minY)
        }
    }
    
    private var background2: some View {
        VStack(spacing: 0) {
            chartYAxiesText(setup.maxY)
            Spacer()
            chartYAxiesText(middleHigh)
            Spacer()
            chartYAxiesText(middleLow)
            Spacer()
            chartYAxiesText(setup.minY)
        }
    }
    
    private var background3: some View {
        VStack(spacing: 0) {
            chartYAxiesText(setup.maxY)
            Spacer()
            chartYAxiesText(middleHigh)
            Spacer()
            chartYAxiesText(middleLow)
            Spacer()
            chartYAxiesText(setup.minY)
        }
    }
    
    private var background4: some View {
        VStack(spacing: 0) {
            chartYAxiesText(setup.maxY)
            Spacer()
            chartYAxiesText(average)
            Spacer()
            chartYAxiesText(setup.minY)
        }
    }
    
    private var background5: some View {
        VStack {
            VStack(spacing: 0) {
                chartYAxiesText(setup.maxY)
                Spacer()
                chartYAxiesText(average)
                Spacer()
                chartYAxiesText(setup.minY)
            }
        }
    }
    
    @ViewBuilder
    private func chartYAxiesText(_ price: Double) -> some View {
        if setup.showYAxiesStats {
            Text(price.formattedWithAbbreviations())
                .foregroundColor(Color.black)
                .padding(.leading, 4)
                .font(.footnote)
        } else {
            EmptyView()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChartYAxiesStatsView(setup: SetupChart())
    }
}
