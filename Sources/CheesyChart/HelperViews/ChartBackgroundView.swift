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
            }
        }
        .background(setup.chartBackgroundColor)
        .frame(height: 200)
    }
    
    private var background0: some View {
        Rectangle()
            .fill(setup.chartBackgroundColor)
    }
    
    private var background1: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
            horizontalDivider
        }
    }
    
    private var background2: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
            horizontalDivider
        }
    }
    
    private var background3: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
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
            }
        )
    }
    
    private var background4: some View {
        VStack(alignment: .leading, spacing: 0) {
            horizontalDivider
            Spacer()
            horizontalDivider
            Spacer()
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
    
    private var background5: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                horizontalDivider
                Spacer()
                horizontalDivider
                Spacer()
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
}

struct ChartBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ChartBackgroundView(setup: SetupChart(chartBackground: .cb5))
            .previewLayout(.sizeThatFits)
    }
}



