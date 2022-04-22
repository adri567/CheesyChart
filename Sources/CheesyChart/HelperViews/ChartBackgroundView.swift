//
//  ChartBackgroundView.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

/// Managing the background cases to choose between five backgrounds
public enum Background {
    case none
    case cb1
    case cb2
    case cb3
    case cb4
    case cb5
}

struct ChartBackgroundView: View {
    
    // MARK: - Properties
    let setup: SetupChart
    
    private var minY: Double = 0.0
    private var maxY: Double = 0.0
    
    init(setup: SetupChart) {
        self.setup = setup
        minY = setup.minY
        maxY = setup.maxY
    }
    
    // MARK: - Body
    var body: some View {
        VStack {
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
            default:
                background1
            }
        }
        .background(setup.chartBackgroundColor)
        .frame(height: 200)
        
    }
    
    var background0: some View {
        Rectangle()
            .fill(setup.chartBackgroundColor)
    }
    
    var background1: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            chartYAxiesText(setup.maxY)
            Spacer()
            horizontalDivider
                .overlay(
                    chartYAxiesText((setup.maxY + setup.minY) / 2)
                    ,alignment: .leading
                )
            Spacer()
            chartYAxiesText(setup.minY)
            horizontalDivider
        }
        
    }
    
    var background2: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            chartYAxiesText(maxY)
            Spacer()
            horizontalDivider
            chartYAxiesText((((maxY + minY) / 2) + maxY) / 2)
            Spacer()
            horizontalDivider
                .overlay(
                    chartYAxiesText((((maxY + minY) / 2) + minY) / 2)
                    , alignment: .leading
                )
            Spacer()
            extendBackground
        }
    }
    
    var background3: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            chartYAxiesText(maxY)
            Spacer()
            horizontalDivider
            chartYAxiesText((((maxY + minY) / 2) + maxY) / 2)
            Spacer()
            horizontalDivider
                .overlay(
                    chartYAxiesText((((maxY + minY) / 2) + minY) / 2)
                    , alignment: .leading
                )
            Spacer()
            extendBackground
        }
        .overlay(
            HStack {
                verticalDivider
                Spacer()
                verticalDivider
                Spacer()
                verticalDivider
                Spacer()
            }
        )
    }

    var extendBackground: some View {
        VStack(alignment: .leading, spacing: 0) {
            chartYAxiesText(minY)
            horizontalDivider
        }
    }
    
    var background4: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            chartYAxiesText(setup.maxY)
            Spacer()
            horizontalDivider
                .overlay(
                    chartYAxiesText((setup.maxY + setup.minY) / 2)
                    ,alignment: .leading
                )
            Spacer()
            chartYAxiesText(setup.minY)
            horizontalDivider
        }
        .overlay(
            HStack {
                verticalDivider
                Spacer()
                verticalDivider
                Spacer()
                verticalDivider
                Spacer()
                verticalDivider
            }
        )
    }
    
    var background5: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                horizontalDivider
                chartYAxiesText(setup.maxY)
                Spacer()
                horizontalDivider
                    .overlay(
                        chartYAxiesText((setup.maxY + setup.minY) / 2)
                        ,alignment: .leading
                    )
                Spacer()
                chartYAxiesText(setup.minY)
                horizontalDivider
            }
        }
        .overlay(
            HStack {
                verticalDivider
                Spacer()
                verticalDivider
                Spacer()
                verticalDivider
            }
        )
    }
    
    private var horizontalDivider: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 1)
            .foregroundColor(setup.chartBackgroundDividerColor)
    }
    
    private var verticalDivider: some View {
        Rectangle()
            .frame(maxHeight: .infinity)
            .frame(width: 1)
            .foregroundColor(setup.chartBackgroundDividerColor)
    }
    
    @ViewBuilder
    private func chartYAxiesText(_ price: Double) -> some View {
        if setup.showYAxiesStats {
            Text("\(price)")
                .padding(.leading, 4)
                .font(.footnote)
        } else {
            EmptyView()
        }
    }
}



struct ChartBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ChartBackgroundView(setup: SetupChart(chartBackground: .cb5))
            .previewLayout(.sizeThatFits)
    }
}



