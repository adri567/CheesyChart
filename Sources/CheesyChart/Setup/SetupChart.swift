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
    public var currencyIdentifier: String
    public var image: UIImage?
    
    public var showChartHeader: Bool
    public var chartHeaderFontColor: Color
    public var chartHeaderColor: Color
    public var showHeaderImage: Bool
    
    public var chartWidth: Double
    public var chartHeight: Double
    
    public var animateChart: Bool
    public var startAnimationAfterAppeariance: CGFloat
    public var chartAnimationDuration: CGFloat
    
    public var chartBackground: Background
    public var chartBackgroundColor: Color
    public var chartBackgroundDividerColor: Color
    public var showYAxiesStats: Bool
    public var yAxiesStatsColor: Color
    public var yAxiesStatsAlignment: YAxiesAlignment
    
    public var chartLineColorOnHigh: Color
    public var chartLineColorOnLow: Color
    public var chartLineWidth: CGFloat
    
    public var showShadow1: Bool
    public var showShadow2: Bool
    public var showShadow3: Bool
    public var showShadow4: Bool
    
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
        currencyIdentifier: String = "en_US",
        image: UIImage? = UIImage(systemName: "bitcoinsign.circle.fill"),
        
        showChartHeader: Bool = false,
        chartHeaderFontColor: Color = .black,
        chartHeaderColor: Color = .clear,
        showHeaderImage: Bool = false,
        
        chartWidth: Double = UIScreen.main.bounds.size.width,
        chartHeight: Double = 200,
        
        animateChart: Bool = false,
        startAnimationAfterAppeariance: CGFloat = 0.1,
        chartAnimationDuration: CGFloat = 1.0,
        
        chartBackground: Background = .none,
        chartBackgroundColor: Color = .white,
        chartBackgroundDividerColor: Color = Color(UIColor.lightGray).opacity(0.2),
        showYAxiesStats: Bool = false,
        yAxiesStatsColor: Color = .black,
        yAxiesStatsAlignment: YAxiesAlignment = .leading,
        
        chartLineColorOnHigh: Color = .green,
        chartLineColorOnLow: Color = .red,
        chartLineWidth: CGFloat = 2,
        
        showShadow1: Bool = false,
        showShadow2: Bool = false,
        showShadow3: Bool = false,
        showShadow4: Bool = false,
        
        chartPriceLabelColor: Color = .clear,
        chartPriceLabelFontColor: Color = .black,
        chartPriceIndicatorColor: Color = Color(UIColor.lightGray),
        chartPriceLabelYAxies: CGFloat = 40.0,
        chartPriceLabelCornerRadius: CGFloat = 5,
        chartPriceLabelShadow: Color = .clear
    ) {
        self.name = name
        self.data = data
        self.currencyIdentifier = currencyIdentifier
        self.image = image
        
        self.showChartHeader = showChartHeader
        self.chartHeaderFontColor = chartHeaderFontColor
        self.chartHeaderColor = chartHeaderColor
        self.showHeaderImage = showHeaderImage
        
        self.chartWidth = chartWidth
        self.chartHeight = chartHeight
        
        self.animateChart = animateChart
        self.startAnimationAfterAppeariance = startAnimationAfterAppeariance
        self.chartAnimationDuration = chartAnimationDuration
        self.chartBackground = chartBackground
        
        self.chartBackgroundColor = chartBackgroundColor
        self.chartBackgroundDividerColor = chartBackgroundDividerColor
        self.showYAxiesStats = showYAxiesStats
        self.yAxiesStatsColor = yAxiesStatsColor
        self.yAxiesStatsAlignment = yAxiesStatsAlignment
        
        self.chartLineColorOnHigh = chartLineColorOnHigh
        self.chartLineColorOnLow = chartLineColorOnLow
        self.chartLineWidth = chartLineWidth
        
        self.showShadow1 = showShadow1
        self.showShadow2 = showShadow2
        self.showShadow3 = showShadow3
        self.showShadow4 = showShadow4
        
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
