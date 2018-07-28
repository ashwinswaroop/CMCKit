//
//  ListingsResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/27/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct ListingsResponse: CMCResponse {
    public typealias D = [ListingsDataElement]
    public typealias M = ListingsMetadata
    public var data: D
    public var metadata: M
}
