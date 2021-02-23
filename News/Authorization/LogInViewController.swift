//
//  Authorization.swift
//  Navigation
//
//  Created by Елена on 08.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class LogInViewController: UIViewController {
    
    private let profileVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController")
    
    private let loginView = LoginUIView()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        loginView.frame = super.view.frame
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginView)
        
        loginView.loginButton.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc fileprivate func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            loginView.contentInset.bottom = keyboardSize.height
            loginView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        }
    }
    
    @objc fileprivate func keyboardWillHide(notification: NSNotification) {
        loginView.contentInset.bottom = .zero
        loginView.verticalScrollIndicatorInsets = .zero
    }
    
    @objc func settingsButtonPressed(sender : UIButton) {
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
