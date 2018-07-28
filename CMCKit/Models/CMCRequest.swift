//
//  CMCRequest.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public protocol CMCRequest: Codable {
    associatedtype Response: CMCResponse
    var resourceName: String {get}
    var parameters: String? {get}
}
