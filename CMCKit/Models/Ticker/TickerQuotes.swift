//
//  Quotes.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerQuotes: Codable {
    public let usd: TickerUSD
    
    public enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}
