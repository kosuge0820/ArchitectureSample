//
//  UIAlertController+Extension.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

extension UIAlertController {
    convenience init<T: ErrorProtocol>(_ error: T) {
        self.init(title: error.title, message: error.message, preferredStyle: .alert)
        self.addAction(UIAlertAction(title: "OK", style: .cancel))
    }
}
