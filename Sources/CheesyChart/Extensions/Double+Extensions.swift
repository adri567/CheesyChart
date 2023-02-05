//
//  Double+Extension.swift
//  
//
//  Created by Adrian Suthold on 24.04.22.
//

import Foundation

/// In this extension we extend Double with extra methods
extension Double {
    
    private var decimalFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func twoDecimals() -> String {
        let number = NSNumber(value: self)
        return decimalFormatter2.string(from: number) ?? ""
    }
    
    /// Converts a Double into a Currency with 2 decimal places
    /// ```
    ///   Convert 1234.56 to $1,234.56
    /// ```
    private func currencyFormatter(currencyIdentifier: String) -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: currencyIdentifier)
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a Double into a Currency as a String with 2 decimal places
    /// ```
    ///   Convert 1234.56 to "$1,234.56"
    /// ```
    func asCurrencyWithTwoDecimals(currencyIdentifier: String) -> String {
        let number = NSNumber(value: self)
        return currencyFormatter(currencyIdentifier: currencyIdentifier).string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into string representation
    /// ```
    ///   Convert 1.2345 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Convert a Double to a String with K, M, Bn, Tr abbreviations.
    /// ```
    /// Convert 12 to 12.00
    /// Convert 1234 to 1.23K
    /// Convert 123456 to 123.45K
    /// Convert 12345678 to 12.34M
    /// Convert 1234567890 to 1.23Bn
    /// Convert 123456789012 to 123.45Bn
    /// Convert 12345678901234 to 12.34Tr
    /// ```
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""

        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()

        default:
            return "\(sign)\(self)"
        }
    }
}
