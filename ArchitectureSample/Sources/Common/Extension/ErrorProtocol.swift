//
//  ErrorProtocol.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

protocol ErrorProtocol: Error {
    var title: String { get }
    var message: String { get }
}
