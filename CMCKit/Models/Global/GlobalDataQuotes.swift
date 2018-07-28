//
//  GlobalDataQuotes.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct GlobalDataQuotes: Codable {
    public let usd: GlobalDataUSD
    
    public enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}
