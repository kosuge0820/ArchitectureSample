//
//  MVVMSignInViewModel.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//



class MVVMSignInViewModel {
    var email: String = "" {
        didSet {
            evaluateValidity()
        }
    }
    
    var password: String = "" {
        didSet {
            evaluateValidity()
        }
    }
    
    var isValid: Bool = false {
        didSet {
            isValidCallback?(isValid)
        }
    }
    
    var isValidCallback: ((_ isValid: Bool) -> Void)?
    
    func attemptToSignIn(_ result: (Result<MVVMUser, SignInError>) -> Void) {
        if email.isEmpty {
            result(.failure(.formIsEmpty(.email)))
        } else if password.isEmpty {
            result(.failure(.formIsEmpty(.password)))
        } else if !email.contains("@") {
            result(.failure(.invalidEmail))
        } else if password.characters.count <= 8 {
            result(.failure(.passwordIsShort))
        } else {
            //Service ClassでPost
            result(.success(MVVMUser(email: email, password: password)))
        }
    }
    
    private func evaluateValidity() {
        isValid = email.characters.count > 0 && password.characters.count > 0
    }
}
