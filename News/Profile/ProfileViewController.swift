//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Елена on 10.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var header: ProfileHeaderView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = super.view.frame
        view.backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(type(of: self), #function)
    }
    
    @IBAction func action(_ sender: UIButton) {
        header.statusLabel.text = header.statusTextField.text
    }
}


