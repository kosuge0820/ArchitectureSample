//
//  CASignUpRepository.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

protocol CASignUpRepository {
    func fetch(_ closure: (CASignUpEntity) -> Void) throws 
}