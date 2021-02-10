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
    
    let profileVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController")
    
    let header = LoginUIView()
    
    override func viewWillLayoutSubviews() {
        header.frame = super.view.frame
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.addSubview(header)
        
        header.loginButton.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
    }
    
    @objc func settingsButtonPressed(sender : UIButton) {
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
