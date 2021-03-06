//
//  TickerMetadata.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerMetadata: Codable {
    public let timestamp: Int
    public let error: JSONHelper?
    
    public enum CodingKeys: String, CodingKey {
        case timestamp
        case error
    }
}
