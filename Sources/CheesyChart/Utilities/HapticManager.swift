//
//  HapticManager.swift
//  
//
//  Created by Adrian Suthold on 24.04.22.
//

import SwiftUI

class HapticManager {
        
    static func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}
