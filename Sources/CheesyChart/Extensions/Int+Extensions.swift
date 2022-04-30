//
//  Int+Extensions.swift
//  
//
//  Created by Adrian Suthold on 30.04.22.
//

import Foundation

extension Int {
    
    /// Checks if an Integer is positiv
    /// - Returns: Returns true if the value is positiv
    func isPositiv() -> Bool {
        switch self.signum() {
        case 1:
            return true
        case -1:
            return false
        case 0:
            return true
        default:
            return false
        }
    }
}
