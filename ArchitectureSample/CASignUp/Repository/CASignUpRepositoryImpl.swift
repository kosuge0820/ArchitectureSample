//
//  CASignUpRepositoryImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

struct CASignUpRepositoryImpl: CASignUpRepository {
    private let dataStore: CASignUpDataStore
    
    init(
        dataStore: CASignUpDataStore
        ) {
        self.dataStore = dataStore
    }
    
    func fetch(_ closure: (CASignUpEntity) -> Void) throws  {
        return try dataStore.fetch(closure)
    }
}