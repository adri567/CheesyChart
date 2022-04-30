//
//  CheesyChartViewModel.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

protocol CheesyChartViewProtocol {
    
    /// Calculates the border that the PriceLabel has a distance to the leading and trailing border
    /// - Parameters:
    ///  -  xLocation: X location of the draged label
    ///  - geoetry: Geometry of the chart where the label is located
    /// - Returns: Returns the distance to the border
    func calculatePriceLabelBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat
    
    /// Calculates the border to the indicator that it stays in the charts view
    /// - Parameters:
    ///    - xLocation: X location of the indicator
    ///    - geometry: Geometry of the chart where the indicator is located
    /// - Returns: Returns the x location within the chart
    func calculateIndicatorBorder(xLocation: CGFloat, geometry: GeometryProxy) -> CGFloat
}

class CheesyChartViewModel: CheesyChartViewProtocol, ObservableObject {
    
    // MARK: - Published Properties
    @Published var animationPercentage: CGFloat = 0
    @Published var touchLocation: CGPoint = .zero
    @Published var hide: Bool = false
    @Published var point: Int = 0
    
    // MARK: - Methods
    func calculatePriceLabelBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat {
        let size = (textWidth / 2) + 5
        if touchLocation.x > size && touchLocation.x < geometry.size.width - (size - 1) {
            return touchLocation.x
        }
        return touchLocation.x > geometry.size.width - size ? geometry.size.width - size : size
    }
    
    func calculateIndicatorBorder(xLocation: CGFloat, geometry: GeometryProxy) -> CGFloat {
        if touchLocation.x > 0 && touchLocation.x < geometry.size.width - 1 {
            return touchLocation.x
        }
        return touchLocation.x > geometry.size.width - 1 ? geometry.size.width - 1 : 0
    }
}

