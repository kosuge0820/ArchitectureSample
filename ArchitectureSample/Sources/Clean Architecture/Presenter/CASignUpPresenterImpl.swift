//
//  CASignUpPresenterImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import Foundation

class CASignUpPresenterImpl: CASignUpPresenter {
    private weak var view: CASignUpViewControllerOutput?
    private let wireframe: CASignUpWireframe
    private let useCase: CASignUpUseCase
    
    init(view: CASignUpViewControllerOutput, wireframe: CASignUpWireframe, useCase: CASignUpUseCase) {
        self.view = view
        self.useCase = useCase
        self.wireframe = wireframe
    }
}
