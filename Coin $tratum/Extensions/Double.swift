//
//  Double.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/19/24.
//

import Foundation

extension Double {
    
    ///converts a double to a currency with 2 to 6 decimal places
    /// Converts 1234.56 to $1,234.56
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
      formatter.locale = .current // <- default value
        formatter.currencyCode = "usd" // <- change currency
        formatter.currencySymbol = "$" // <- change symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        
        return formatter
    }
    
    ///converts a double to a currency with 2 to 6 decimal places
    ///  converts 12.3456 to $12.34
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    ///converts a double to a cstring representation
    /// Converts 1.234.56 to 1.23
    
    func asNumberString() -> String {
        
        return String(format: "%.2f", self)
    }
    
    ///converts a double to a cstring representation with percent symbol
    /// Converts 1.234.56 to 1.23%
  
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
