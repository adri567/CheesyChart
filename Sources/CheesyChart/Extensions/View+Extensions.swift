//
//  View+Extensions.swift
//  
//
//  Created by Adrian Suthold on 18.05.22.
//

import Foundation
import SwiftUI

extension View {
    
    /// Get the actual width of the price label
    /// - Parameter width: Width of the price label
    /// - Returns: Since we are using this method as a modifier we need to return some View, to use it on a rectangle
    func getTextWidth(_ width: CGFloat) -> some View {
        preference(key: PriceLabelPreferenceKey.self, value: width)
    }
}
