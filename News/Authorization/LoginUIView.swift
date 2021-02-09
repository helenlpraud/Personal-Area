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
        loginButton.alpha = 1
        return loginButton
    }()

    func addSubview() {
        addSubview(logoImageView)
        addSubview(grayView)
        addSubview(inputFirstTextField)
        addSubview(inputTwoTextField)
        addSubview(loginButton)
    }
    
    func setConstraints() {
        logoImageView.toAutolayout()
        logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        grayView.toAutolayout()
        grayView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        grayView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
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




