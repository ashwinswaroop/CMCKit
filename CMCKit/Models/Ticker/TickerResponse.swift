//
//  TickerResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerResponse: CMCResponse {
    
    public typealias D = [String: TickerData]
    public typealias M = TickerMetadata
    public var data: D
    public var metadata: M
}
