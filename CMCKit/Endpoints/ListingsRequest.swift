//
//  Listings.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct ListingsRequest: CMCRequest {
    public typealias Response = ListingsResponse
    public var resourceName: String {
        return "listings"
    }
    public var parameters: String? {
        return nil
    }
    public init() {
        
    }
}
