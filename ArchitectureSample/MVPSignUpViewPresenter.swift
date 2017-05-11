//
//  MVPSignUpViewPresenter.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class MVPSignUpViewPresenter: NSObject {
    private weak var controller: MVPSignUpViewController?
    private let user = MVPUser()
    
    
    init(controller: MVPSignUpViewController) {
        super.init()
        self.controller = controller
    }
    
    func signInButtonTapped() {
        user.attemptToSignIn { result in
            controller?.signInResult(result)
        }
    }
    
    func emailTextFieldDidChange(_ textField: UITextField) {
        user.setEmail(textField.text ?? "")
    }
    
    func passwordTextFieldDidChange(_ textField: UITextField) {
        user.setPassword(textField.text ?? "")
    }
}
