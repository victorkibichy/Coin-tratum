//
//  Double.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/19/24.
//

import Foundation

extension Double {
    
    ///converts a double to a currency with 2 to 6 decimal places
    /// Converts 1234 to $1,234
    ///  converts 12.3456 to $12.3456
    ///  convert 0.123456 to $0.123456
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
///        formatter.locale = .current // <- default value
///        formatter.currencyCode = "usd" // <- change currency
///        formatter.currencySymbol = "$" // <- change symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        
        
        return formatter
    }
    
    ///converts a double to a currency with 2 to 6 decimal places
    /// Converts 1234 to $1,234
    ///  converts 12.3456 to $12.3456
    ///  convert 0.123456 to $0.123456
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    ///converts a double to a cstring representation
    /// Converts 1234.56 to $1,234.56
    
    func asNumberString() -> String {
        
        return String(format: "%.2f", self)
    }
}
