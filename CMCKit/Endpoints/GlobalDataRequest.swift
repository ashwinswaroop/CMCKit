//
//  GlobalDataRequest.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/28/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public struct GlobalDataRequest: CMCRequest {
    public var convert :String?
    public typealias Response = GlobalDataResponse
    public var resourceName: String {
        return "global"
    }
    public var parameters: String? {
        var params = "?"
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
    public init(convert: String?=nil) {
        self.convert = convert
    }
}
