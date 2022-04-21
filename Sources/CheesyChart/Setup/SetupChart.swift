//
//  SetupChart.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import Foundation
import SwiftUI

public struct SetupChart {
    
    // MARK: - Properties
    public var name: String
    public var data: [Double]
    public let maxY: Double
    public let minY: Double
    public var chartWidth: Double
    public var chartHeight: Double
    public var chartBackground: Color
    public var chartLineColor: Color
    public var chartLineWidth: CGFloat
    public var lineShadow1: Color
    public var lineShadow2: Color
    public var lineShadow3: Color
    public var lineShadow4: Color
    public var hideChartYAxiesView: Bool
    
    public init(
        name: String = "",
        data: [Double] = [],
        chartWidth: Double = UIScreen.main.bounds.width,
        chartHeight: Double = 200,
        chartBackground: Color = .white,
        chartLineColor: Color = .blue,
        chartLineWidth: CGFloat = 2,
        lineShadow1: Color = .clear,
        lineShadow2: Color = .clear,
        lineShadow3: Color = .clear,
        lineShadow4: Color = .clear,
        hideChartYAxiesView: Bool = false
    ) {
        self.name = name
        self.data = data
        self.chartWidth = chartWidth
        self.chartHeight = chartHeight
        self.chartBackground = chartBackground
        self.chartLineColor = chartLineColor
        self.chartLineWidth = chartLineWidth
        self.lineShadow1 = lineShadow1
        self.lineShadow2 = lineShadow2
        self.lineShadow3 = lineShadow3
        self.lineShadow4 = lineShadow4
        self.hideChartYAxiesView = hideChartYAxiesView
        
        maxY = data.max() ?? 0
        minY = data.min() ?? 0
    }
}
