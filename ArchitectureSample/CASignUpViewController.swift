//
//  CASignUpViewController.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

class CASignUpViewController: UIViewController {
    private let signupView = SignUpView.instantiate()
    
    override func loadView() {
        super.loadView()
        self.view = signupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
