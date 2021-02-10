//
//  AutoView.swift
//  News
//
//  Created by Елена on 08.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class LoginUIView: UIView {
    
    let logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        return logo
    }()
    
    let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.5
        view.layer.cornerRadius = 10
        return view
    }()
    
    let grayLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()

    static func setSettingsTextField(text: UITextField) {
        text.textColor = .black
        text.autocapitalizationType = .none
        text.font = UIFont.systemFont(ofSize: 16, weight: .regular)
    }

    let inputFirstTextField: UITextField = {
        let inputFirst = UITextField()
        setSettingsTextField(text: inputFirst)
        return inputFirst
    }()

    let inputTwoTextField: UITextField = {
        let inputTwo = UITextField()
        setSettingsTextField(text: inputTwo)
        inputTwo.isSecureTextEntry = true
        return inputTwo
    }()

    let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Log In", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        loginButton.layer.cornerRadius = 10
//        loginButton.alpha = 1
        return loginButton
    }()

    func addSubview() {
        addSubview(logoImageView)
        addSubview(grayView)
        addSubview(grayLineView)
        addSubview(inputFirstTextField)
        addSubview(inputTwoTextField)
        addSubview(loginButton)
    }
    
    func setConstraints() {
        logoImageView.toAutolayout()
        logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        grayView.toAutolayout()
        grayView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        grayView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        grayView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        grayView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        grayLineView.toAutolayout()
        grayLineView.topAnchor.constraint(equalTo: grayView.topAnchor, constant: 49.75).isActive = true
        grayLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        grayLineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        grayLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        inputFirstTextField.toAutolayout()
        inputFirstTextField.topAnchor.constraint(equalTo: grayView.topAnchor).isActive = true
        inputFirstTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        inputFirstTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        inputFirstTextField.heightAnchor.constraint(equalToConstant: 49.75).isActive = true
        
        inputTwoTextField.toAutolayout()
        inputTwoTextField.topAnchor.constraint(equalTo: inputFirstTextField.bottomAnchor, constant: 0.5).isActive = true
        inputTwoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        inputTwoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        inputTwoTextField.heightAnchor.constraint(equalToConstant: 49.75).isActive = true
        
        loginButton.toAutolayout()
        loginButton.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 16).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
        addSubview()
        setConstraints()
    }
}




