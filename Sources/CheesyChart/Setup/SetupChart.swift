//
//  SetupChart.swift
//  
//
//  Created by Adrian Suthold on 21.04.22.
//

import Foundation
import SwiftUI

public class SetupChart {
    
    // MARK: - Properties
    public var name: String
    public var data: [Double]
    
    public var showChartHeader: Bool
    public var chartHeaderFontColor: Color
    public var chartHeaderColor: Color
    
    public var chartWidth: Double
    public var chartHeight: Double
    
    public var chartBackground: Background
    public var chartBackgroundColor: Color
    public var chartBackgroundDividerColor: Color
    
    public var chartLineColor: Color
    public var chartLineWidth: CGFloat
    
    public var lineShadow1: Color
    public var lineShadow2: Color
    public var lineShadow3: Color
    public var lineShadow4: Color
    
    public var chartPriceLabelColor: Color
    public var chartPriceLabelFontColor: Color
    public var chartPriceIndicatorColor: Color
    public var chartPriceLabelYAxies: CGFloat
    public var chartPriceLabelCornerRadius: CGFloat
    
    public var hideChartYAxiesView: Bool
    public let maxY: Double
    public let minY: Double
    
    public init(
        name: String = "",
        data: [Double] = [],
        showChartHeader: Bool = false,
        chartHeaderFontColor: Color = .black,
        chartHeaderColor: Color = .clear,
        chartWidth: Double = UIScreen.main.bounds.width,
        chartHeight: Double = 200,
        chartBackground: Background = .cb1,
        chartBackgroundColor: Color = .white,
        chartBackgroundDividerColor: Color = Color(UIColor.lightGray).opacity(0.2),
        chartLineColor: Color = .blue,
        chartLineWidth: CGFloat = 2,
        lineShadow1: Color = .clear,
        lineShadow2: Color = .clear,
        lineShadow3: Color = .clear,
        lineShadow4: Color = .clear,
        chartPriceLabelColor: Color = .clear,
        chartPriceLabelFontColor: Color = .black,
        chartPriceIndicatorColor: Color = Color(UIColor.lightGray),
        chartPriceLabelYAxies: CGFloat = 40.0,
        chartPriceLabelCornerRadius: CGFloat = 5,
        hideChartYAxiesView: Bool = false
    ) {
        self.name = name
        self.data = data
        self.showChartHeader = showChartHeader
        self.chartHeaderFontColor = chartHeaderFontColor
        self.chartHeaderColor = chartHeaderColor
        self.chartWidth = chartWidth
        self.chartHeight = chartHeight
        self.chartBackground = chartBackground
        self.chartBackgroundColor = chartBackgroundColor
        self.chartBackgroundDividerColor = chartBackgroundDividerColor
        self.chartLineColor = chartLineColor
        self.chartLineWidth = chartLineWidth
        self.lineShadow1 = lineShadow1
        self.lineShadow2 = lineShadow2
        self.lineShadow3 = lineShadow3
        self.lineShadow4 = lineShadow4
        self.chartPriceLabelColor = chartPriceLabelColor
        self.chartPriceLabelFontColor = chartPriceLabelFontColor
        self.chartPriceIndicatorColor = chartPriceIndicatorColor
        self.chartPriceLabelYAxies = chartPriceLabelYAxies
        self.chartPriceLabelCornerRadius = chartPriceLabelCornerRadius
        self.hideChartYAxiesView = hideChartYAxiesView
        
        maxY = data.max() ?? 0
        minY = data.min() ?? 0
    }
}
