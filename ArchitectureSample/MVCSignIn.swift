//
//  MVCSignIn.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

struct MVCUser {
    private let email: String
    private let password: String
    
    public var get: (email: String, password: String) {
        return (email, password)
    }
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    
    init?(email: String?, password: String?) {
        guard let email = email,
              let password = password else {
            return nil
        }
        self.email = email
        self.password = password
    }
    
    func attemptToSignIn(_ result: (Result<MVCUser, SignInError>) -> Void) {
        if email.isEmpty {
            result(.failure(.formIsEmpty(.email)))
        } else if password.isEmpty {
            result(.failure(.formIsEmpty(.password)))
        } else if !email.contains("@") {
            result(.failure(.invalidEmail))
        } else if password.characters.count <= 8 {
            result(.failure(.passwordIsShort))
        } else {
            //MVCUser ClassでPost
            result(.success(MVCUser(email: email, password: password)))
        }
    }
}
