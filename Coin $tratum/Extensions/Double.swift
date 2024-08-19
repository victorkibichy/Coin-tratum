//
//  Double.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 8/19/24.
//

import Foundation

extension Double {
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        
        return formatter
    }
}
