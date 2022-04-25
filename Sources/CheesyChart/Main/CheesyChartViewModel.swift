//
//  CheesyChartViewModel.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

protocol CheesyChartViewProtocol {
    
    /// Calculates the border that the PriceLabel has a distance to the leading and trailing border
    /// - Parameter xLocation: X Location of the draged label
    /// - Parameter geoetry: Geometry of the chart where the label is located
    /// - Returns: Returns the distance to the border
    func calculateBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat
}

class CheesyChartViewModel: CheesyChartViewProtocol, ObservableObject {
    
    // MARK: - Published Properties
    @Published var animationPercentage: CGFloat = 0
    @Published var touchLocation: CGPoint = .zero
    @Published var hide: Bool = false
    @Published var point: Int = 0
    
    // MARK: - Methods
    func calculateBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat {
        let size = (textWidth / 2) + 5
        if touchLocation.x > size && touchLocation.x < geometry.size.width - (size - 1) {
            return touchLocation.x
        }
        return touchLocation.x > geometry.size.width - size ? geometry.size.width - size : size
    }
}

