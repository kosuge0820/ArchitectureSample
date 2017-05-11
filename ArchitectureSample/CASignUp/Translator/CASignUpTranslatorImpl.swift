//
//  CASignUpTranslatorImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import Foundation

struct CASignUpTranslatorImpl: CASignUpTranslator {
    func translate(from model: CASignUpModel) -> CASignUpEntity {
        return CASignUpEntityImpl(id: model.id)
    }
    
    func translate(from entity: CASignUpEntity) -> CASignUpModel {
        return CASignUpModelImpl(id: entity.id)
    }
}
