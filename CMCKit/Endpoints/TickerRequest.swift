//
//  TickerRequest.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct TickerRequest: CMCRequest {
    public var start, limit :Int?
    public var sort, structure, convert :String?
    public typealias Response = TickerResponse
    public var resourceName: String {
        return "ticker"
    }
    public var parameters: String? {
        var params = "?"
        if let tstart = start {
            params += "start=\(tstart)"
        }
        if let tlimit = limit {
            params += "limit=\(tlimit)"
        }
        if let tsort = sort {
            params += "sort=\(tsort)"
        }
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
    public init(start: Int?=nil, limit: Int?=nil, sort: String?=nil, structure: String?=nil, convert: String?=nil) {
            self.start = start
            self.limit = limit
            self.sort = sort
            self.structure = structure
            self.convert = convert
    }
}
