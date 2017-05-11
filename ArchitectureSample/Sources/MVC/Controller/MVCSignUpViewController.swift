//
//  MVCSignUpViewController.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class MVCSignUpViewController: UIViewController {
    private let signupView = SignUpView.instantiate()
    
    override func loadView() {
        super.loadView()
        self.view = signupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signupView.signUpButton.addTarget(self, action: #selector(attemptToSignIn), for: .touchUpInside)
    }
    
    @objc private func attemptToSignIn() {
        let data: (email: String, password: String) = (
            signupView.emailTextField.text ?? "",
            signupView.passwordTextField.text ?? ""
        )
        
        let user = MVCUser(email: data.email, password: data.password)
        user.attemptToSignIn { [weak self] result in
            switch result {
            case .success(let user):
                let alertController = UIAlertController(title: user.get.email + user.get.password, message: nil, preferredStyle: .alert)
                self?.present(alertController, animated: true)
            case .failure(let error):
                let alertController = UIAlertController(error)
                self?.present(alertController, animated: true)
            }
        }
    }
}
