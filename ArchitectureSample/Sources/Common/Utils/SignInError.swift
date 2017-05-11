//
//  SignInError.swift
//  ArchitectureSample
//
//  Created by k-satoshi on 2017/05/11.
//  Copyright © 2017年 k-satoshi. All rights reserved.
//

import UIKit

enum SignInError: ErrorProtocol {
    case invalidEmail
    case passwordIsShort
    case formIsEmpty(SignInError.Form)
    enum Form { case email, password }
    
    var title: String {
        switch self {
        case .invalidEmail:
            return "不適切なフォーマットです"
        case .passwordIsShort:
            return "パスワードが短いです"
        case .formIsEmpty(.email):
            return "メールアドレスが空です"
        case .formIsEmpty(.password):
            return "パスワードが空です"
        }
    }
    
    var message: String {
        switch self {
        case .invalidEmail:
            return "正しい形式で\nメールアドレスを入力してください"
        case .passwordIsShort:
            return "パスワードは８文字以上です"
        case .formIsEmpty(.email):
            return "メールアドレスの入力欄に入力してください"
        case .formIsEmpty(.password):
            return "パスワードの入力欄に入力してください"
        }
    }
}
