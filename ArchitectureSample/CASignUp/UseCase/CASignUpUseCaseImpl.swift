//
//  CASignUpUseCaseImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import Foundation

struct CASignUpUseCaseImpl: CASignUpUseCase {
    private let repository: CASignUpRepository
    private let translator: CASignUpTranslator
    
    init(repository: CASignUpRepository, translator: CASignUpTranslator) {
        self.repository = repository
        self.translator = translator
    }
    
    func fetch(_ closure: (CASignUpModel) -> Void) throws  {
        try repository.fetch { 
           closure(
              translator.translate(from: $0)
           )
      }
    }
}
