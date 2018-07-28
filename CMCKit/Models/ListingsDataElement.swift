//
//  ListingsResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct ListingsDataElement: Decodable {
    public let id: Int?
    public let name: String?
    public let symbol: String?
    public let website_slug: String?
}
