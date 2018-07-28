//
//  GlobalDataResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct GlobalDataResponse: CMCResponse {
    
    public typealias D = GlobalDataData
    public typealias M = GlobalDataMetadata
    public var data: D
    public var metadata: M
}
