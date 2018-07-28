//
//  CMCResponse.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public protocol CMCResponse: Decodable{
    associatedtype D
    associatedtype M
    var data: D {get}
    var metadata: M {get}
}
