//
//  CASignUpViewController.swift
//  Kuri
//
//  Created by k-satoshi on 2017/5/11.
//  Copyright © 2016年 k-satoshi. All rights reserved.
//

import UIKit

class CASignUpViewController: UIViewController {
    
    private var presenter: CASignUpPresenter!
    
    func inject(presenter: CASignUpPresenter) {
        self.presenter = presenter
    }
    
    override func loadView() {
        super.loadView()
        self.view = SignUpView.instantiate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CASignUpViewController: CASignUpViewControllerOutput {
    
}
