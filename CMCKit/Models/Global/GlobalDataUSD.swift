//
//  GlobalDataUSD.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct GlobalDataUSD: Codable {
    public let totalMarketCap, totalVolume24H: Int
    
    public enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume24H = "total_volume_24h"
    }
}
