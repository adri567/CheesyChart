//
//  CheesyChartViewModel.swift
//  
//
//  Created by Adrian Suthold on 22.04.22.
//

import SwiftUI

protocol CheesyChartViewProtocol {
    
    ///
    /// - Parameter xLocation:
    /// - Parameter geoetry:
    /// - Returns:
    func calculateBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat
}

class CheesyChartViewModel: CheesyChartViewProtocol, ObservableObject {
    
    // MARK: - Published Properties
    @Published var touchLocation: CGPoint = .zero
    @Published var hide: Bool = false
    @Published var point: Int = 0
    
    
    // MARK: - Methods
    func calculateBorder(xLocation: CGFloat, geometry: GeometryProxy, textWidth: Double) -> CGFloat {
        let size = textWidth / 2
        if touchLocation.x > size && touchLocation.x < geometry.size.width - size {
            return touchLocation.x
        }
        return touchLocation.x > geometry.size.width - size ? geometry.size.width - size : size
    }
}

