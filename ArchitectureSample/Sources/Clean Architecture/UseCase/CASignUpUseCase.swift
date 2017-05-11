//
//  CASignUpUseCase.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import Foundation

protocol CASignUpUseCase {
    func fetch(_ closure: (CASignUpModel) -> Void) throws 
}