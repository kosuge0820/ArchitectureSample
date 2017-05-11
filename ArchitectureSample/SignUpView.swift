//
//  SignUpView.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

extension UIColor {
    static var lightBlue: UIColor {
        return UIColor(red: 26 / 255, green: 157 / 255, blue: 203 / 255, alpha: 1.0)
    }
}

class SignUpView: UIView {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    static func instantiate() -> SignUpView {
        let nib = UINib(nibName: "SignUpView", bundle: nil)
        return nib.instantiate(withOwner: "SignUpView", options: nil)[0] as! SignUpView
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layoutSignupButton()
    }
    
    private func layoutSignupButton() {
        signUpButton.backgroundColor(UIColor.lightBlue, for: .normal)
        signUpButton.backgroundColor(UIColor.lightGray, for: .disabled)
    }
}
