//
//  MVVMSignUpViewController.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class MVVMSignUpViewController: UIViewController {
    private let signupView = SignUpView.instantiate()
    private let viewModel = MVVMSignInViewModel()
    
    override func loadView() {
        super.loadView()
        self.view = signupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindEvent()
    }
    
    private func bindEvent() {
        signupView.signUpButton.isEnabled = false
        
        signupView.emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        signupView.passwordTextField.addTarget(self, action: #selector(passwordTextFieldDidChange(_:)), for: .editingChanged)
        signupView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped(_:)), for: .touchUpInside)
        
        viewModel.isValidCallback = { [weak self] isValid in
            self?.signupView.signUpButton.isEnabled = isValid
        }
    }
    
    func emailTextFieldDidChange(_ textField: UITextField) {
        viewModel.email = textField.text ?? ""
    }
    
    func passwordTextFieldDidChange(_ textField: UITextField) {
        viewModel.password = textField.text ?? ""
    }
    
    func signUpButtonTapped(_ sender: UIButton) {
        viewModel.attemptToSignIn { [weak self] result in
            switch result {
            case .success(let user):
                let alertController = UIAlertController(
                    title: "email: " + user.email + "\n" + "password: " + user.password,
                    message: nil, preferredStyle: .alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel))
                self?.present(alertController, animated: true)
            case .failure(let error):
                let alertController = UIAlertController(error)
                self?.present(alertController, animated: true)
            }
        }
    }
}
