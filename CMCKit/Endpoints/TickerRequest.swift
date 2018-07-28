//
//  TickerRequest.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerRequest: CMCRequest {
    public var id: Int?
    public var structure, convert :String?
    public typealias Response = TickerResponse
    public var resourceName: String {
        return "ticker/\(id!)"
    }
    public var parameters: String? {
        var params = "?"
        if let tstructure = structure {
            params += "structure=\(tstructure)"
        }
        if let tconvert = convert {
            params += "convert=\(tconvert)"
        }
        if(params == "?") {
            return nil
        }
        else {
            return params
        }
    }
    public init(id: Int?=1, structure: String?=nil, convert: String?=nil) {
        self.id = id
        self.structure = structure
        self.convert = convert
    }
}
