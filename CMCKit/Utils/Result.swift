//
//  Result.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error)
}
