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
    public var image: UIImage?
    public var useCustomHeader: Bool
    public var customHeader: AnyView
    
    public var showChartHeader: Bool
    public var chartHeaderFontColor: Color
    public var chartHeaderColor: Color
    public var showHeaderImage: Bool
    
    public var chartWidth: Double
    public var chartHeight: Double
    
    public var animateChart: Bool
    public var startAnimationAfterAppear: CGFloat
    public var chartAnimationDuration: CGFloat
    
    public var chartBackground: Background
    public var chartBackgroundColor: Color
    public var chartBackgroundDividerColor: Color
    public var showYAxiesStats: Bool
    public var yAxiesStatsColor: Color
    
    public var chartLineColorOnHigh: Color
    public var lineChartColorOnLow: Color
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
    public var chartPriceLabelShadow: Color
    
    public let maxY: Double
    public let minY: Double
    
    public init(
        name: String = "",
        data: [Double] = [],
        image: UIImage? = UIImage(systemName: "bitcoinsign.circle.fill"),
        useCustomHeader: Bool = false,
        customHeader: AnyView = AnyView(EmptyView()),
        
        showChartHeader: Bool = false,
        chartHeaderFontColor: Color = .black,
        chartHeaderColor: Color = .clear,
        showHeaderImage: Bool = false,
        
        chartWidth: Double = UIScreen.main.bounds.width,
        chartHeight: Double = 200,
        
        animateChart: Bool = false,
        startAnimationAfterAppear: CGFloat = 0.1,
        chartAnimationDuration: CGFloat = 1.0,
        
        chartBackground: Background = .none,
        chartBackgroundColor: Color = .white,
        chartBackgroundDividerColor: Color = Color(UIColor.lightGray).opacity(0.2),
        showYAxiesStats: Bool = false,
        yAxiesStatsColor: Color = .black,
        
        chartLineColorOnHigh: Color = .green,
        lineChartColorOnLow: Color = .red,
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
        chartPriceLabelShadow: Color = .clear
    ) {
        self.name = name
        self.data = data
        self.image = image
        self.useCustomHeader = useCustomHeader
        self.customHeader = customHeader
        
        self.showChartHeader = showChartHeader
        self.chartHeaderFontColor = chartHeaderFontColor
        self.chartHeaderColor = chartHeaderColor
        self.showHeaderImage = showHeaderImage
        
        self.chartWidth = chartWidth
        self.chartHeight = chartHeight
        
        self.animateChart = animateChart
        self.startAnimationAfterAppear = startAnimationAfterAppear
        self.chartAnimationDuration = chartAnimationDuration
        self.chartBackground = chartBackground
        
        self.chartBackgroundColor = chartBackgroundColor
        self.chartBackgroundDividerColor = chartBackgroundDividerColor
        self.showYAxiesStats = showYAxiesStats
        self.yAxiesStatsColor = yAxiesStatsColor
        
        self.chartLineColorOnHigh = chartLineColorOnHigh
        self.lineChartColorOnLow = lineChartColorOnLow
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
        self.chartPriceLabelShadow = chartPriceLabelShadow
        
        maxY = data.max() ?? 0
        minY = data.min() ?? 0
    }
}
