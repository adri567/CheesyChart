//
//  PriceLabelPreferenceKey.swift
//  
//
//  Created by Adrian Suthold on 18.05.22.
//

import Foundation
import SwiftUI

struct PriceLabelPreferenceKey: PreferenceKey {
    
    static var defaultValue: CGFloat = 0.0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
    
}
