//
//  ListingsMetaData.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct ListingsMetadata: Decodable {
    public let timestamp: Double?
    public let num_cryptocurrencies: Int?
    public let error: String?
}
