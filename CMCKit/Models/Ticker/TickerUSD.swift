//
//  USD.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerUSD: Codable {
    public let price, volume24H, marketCap, percentChange1H: Double
    public let percentChange24H, percentChange7D: Double
    
    public enum CodingKeys: String, CodingKey {
        case price
        case volume24H = "volume_24h"
        case marketCap = "market_cap"
        case percentChange1H = "percent_change_1h"
        case percentChange24H = "percent_change_24h"
        case percentChange7D = "percent_change_7d"
    }
}
