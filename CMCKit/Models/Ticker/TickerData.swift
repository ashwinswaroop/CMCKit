//
//  TickerData.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerData: Codable {
    public let id: Int
    public let name, symbol, websiteSlug: String
    public let rank: Int
    public let circulatingSupply, totalSupply: Double
    public let maxSupply: Double?
    public let quotes: TickerQuotes
    public let lastUpdated: Int
    
    public enum CodingKeys: String, CodingKey {
        case id, name, symbol
        case websiteSlug = "website_slug"
        case rank
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case quotes
        case lastUpdated = "last_updated"
    }
}
