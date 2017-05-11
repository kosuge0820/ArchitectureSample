//
//  MVPSignUpViewController.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class MVPSignUpViewController: UIViewController {
    private let signupView = SignUpView.instantiate()
    private var presenter: MVPSignUpViewPresenter?

    override func loadView() {
        super.loadView()
        self.view = signupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = MVPSignUpViewPresenter(controller: self)
        bindEvent()
    }
    
    private func bindEvent() {
        signupView.signUpButton.addTarget(presenter, action: #selector(presenter?.signInButtonTapped), for: .touchUpInside)
        signupView.emailTextField.addTarget(presenter, action: #selector(presenter?.emailTextFieldDidChange(_:)), for: .editingChanged)
        signupView.passwordTextField.addTarget(presenter, action: #selector(presenter?.passwordTextFieldDidChange(_:)), for: .editingChanged)
    }
    
    public func signInResult(_ result: Result<MVPUser, SignInError>) {
        switch result {
        case .success(let user):
            let alertController = UIAlertController(
                title: "email: " + user.get.email + "\n" + "password: " + user.get.password,
                message: nil, preferredStyle: .alert
            )
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(alertController, animated: true)
        case .failure(let error):
            let alertController = UIAlertController(error)
            present(alertController, animated: true)
        }
    }
}
