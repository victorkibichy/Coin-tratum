//
//  StatisticsModel.swift
//  Coin $tratum
//
//  Created by Kibichy on 29/04/2025.
//

import Foundation

struct StatisticModel : Identifiable{
    
    let id: UUID = UUID()
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}

let newModel = StatisticModel(title: "", value: "", percentageChange: nil)

