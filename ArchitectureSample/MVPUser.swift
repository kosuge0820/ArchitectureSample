//
//  MVPUser.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class MVPUser: NSObject {
    private var email: String = ""
    private var password: String = ""
    
    override init() {
        super.init()
    }
    
    init(email: String, password: String) {
        super.init()
        self.email = email
        self.password = password
    }
    
    public var get: (email: String, password: String) {
        return (email, password)
    }
    
    func setEmail(_ email: String) {
        self.email = email
    }
    
    func setPassword(_ password: String) {
        self.password = password
    }
    
    func attemptToSignIn(_ result: (Result<MVPUser, SignInError>) -> Void) {
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
            result(.success(MVPUser(email: email, password: password)))
        }
    }
}
