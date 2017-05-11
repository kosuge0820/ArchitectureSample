//
//  Result.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import Foundation

enum Result<T, Error> {
    case success(T)
    case failure(Error)
}

