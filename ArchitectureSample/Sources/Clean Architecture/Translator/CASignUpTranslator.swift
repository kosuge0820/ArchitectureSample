//
//  CASignUpTranslator.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//


import Foundation

protocol CASignUpTranslator {
    func translate(from model: CASignUpModel) -> CASignUpEntity
    func translate(from entity: CASignUpEntity) -> CASignUpModel
}