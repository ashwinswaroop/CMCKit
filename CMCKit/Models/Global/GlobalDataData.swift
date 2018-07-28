//
//  GlobalDataData.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct GlobalDataData: Codable {
    public let activeCryptocurrencies, activeMarkets: Int
    public let bitcoinPercentageOfMarketCap: Double
    public let quotes: GlobalDataQuotes
    public let lastUpdated: Int
    
    public enum CodingKeys: String, CodingKey {
        case activeCryptocurrencies = "active_cryptocurrencies"
        case activeMarkets = "active_markets"
        case bitcoinPercentageOfMarketCap = "bitcoin_percentage_of_market_cap"
        case quotes
        case lastUpdated = "last_updated"
    }
}
