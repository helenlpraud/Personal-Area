//
//  AutoView.swift
//  News
//
//  Created by Елена on 08.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class LoginUIView: UIScrollView {
    
    private let containerView = UIView()
    
    private let containerInputView: UIView = {
        let container = UIView()
        container.toAutolayout()
        return container
    }()
    
    private let logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        logo.toAutolayout()
        return logo
    }()
    
    private let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.5
        view.layer.cornerRadius = 10
        view.toAutolayout()
        return view
    }()
    
    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.toAutolayout()
        return view
    }()

    static func setSettingsTextField(secureTextEntry : Bool) -> UITextField {
        let textField = UITextField()
        textField.textColor = .black
        textField.autocapitalizationType = .none
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.toAutolayout()
        textField.isSecureTextEntry = secureTextEntry
        return textField
    }

    private let loginTextField: UITextField = LoginUIView.setSettingsTextField(secureTextEntry: false)
    
    private let passwordTextField: UITextField = LoginUIView.setSettingsTextField(secureTextEntry: true)

    let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Log In", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        loginButton.layer.cornerRadius = 10
        loginButton.toAutolayout()
        return loginButton
    }()

    func addSubviews() {
        addSubview(containerView)
        
        containerView.addSubview(logoImageView)
        containerView.addSubview(grayView)
        containerView.addSubview(loginButton)
        
        grayView.addSubview(separatorView)
        grayView.addSubview(containerInputView)
        
        containerInputView.addSubview(loginTextField)
        containerInputView.addSubview(passwordTextField)
    }
    
    func setConstraints() {
        containerView.toAutolayout()
        
        let constraints = [
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.widthAnchor.constraint(equalTo: widthAnchor),
        
            logoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
        
        
            grayView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
            grayView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            grayView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            grayView.heightAnchor.constraint(equalToConstant: 100),
            
            containerInputView.topAnchor.constraint(equalTo: grayView.topAnchor),
            containerInputView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 10),
            containerInputView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor),
            containerInputView.heightAnchor.constraint(equalTo: grayView.heightAnchor),
        
            loginTextField.topAnchor.constraint(equalTo: containerInputView.topAnchor),
            loginTextField.leadingAnchor.constraint(equalTo: containerInputView.leadingAnchor),
            loginTextField.trailingAnchor.constraint(equalTo: containerInputView.trailingAnchor),
            loginTextField.heightAnchor.constraint(equalToConstant: 49.75),
            
            separatorView.topAnchor.constraint(equalTo: loginTextField.bottomAnchor),
            separatorView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 0.5),
        
            passwordTextField.topAnchor.constraint(equalTo: separatorView.bottomAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: containerInputView.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: containerInputView.trailingAnchor),
            passwordTextField.bottomAnchor.constraint(equalTo: containerInputView.bottomAnchor),
        
            loginButton.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 16),
            loginButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -24)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
        addSubviews()
        setConstraints()
    }
}




