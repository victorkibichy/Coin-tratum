//
//  UIApplication.swift
//  Coin $tratum
//
//  Created by  Bouncy Baby on 10/1/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
