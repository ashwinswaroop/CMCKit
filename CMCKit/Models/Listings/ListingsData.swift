//
//  ListingsResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct ListingsData: Codable {
    public let id: Int
    public let name, symbol, websiteSlug: String
    
    public enum CodingKeys: String, CodingKey {
        case id, name, symbol
        case websiteSlug = "website_slug"
    }
}
