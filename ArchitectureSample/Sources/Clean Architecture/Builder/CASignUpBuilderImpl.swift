//
//  CASignUpBuilderImpl.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import UIKit

struct CASignUpBuilderImpl: CASignUpBuilder {
    func build() -> UIViewController {
        let viewController = CASignUpViewController()
        viewController.inject(
        presenter: CASignUpPresenterImpl(
            view: viewController,
            wireframe: CASignUpWireframeImpl(
                viewController: viewController
            ),
            useCase: CASignUpUseCaseImpl(
                repository: CASignUpRepositoryImpl (
                    dataStore: CASignUpDataStoreImpl()
                ),
                    translator: CASignUpTranslatorImpl()
                )
            )
        )
        return viewController
    }
}
