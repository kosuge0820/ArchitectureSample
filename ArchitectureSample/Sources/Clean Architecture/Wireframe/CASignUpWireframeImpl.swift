//
//  CASignUpWireframeImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import UIKit

class CASignUpWireframeImpl: CASignUpWireframe {
    private weak var viewController: UIViewController!
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}
