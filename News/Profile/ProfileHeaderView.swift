//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Елена on 10.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    @IBOutlet weak var fullNameLabel: UILabel! {
        didSet {
            fullNameLabel.text = "Леночка"
            fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            fullNameLabel.textColor = .black
        }
    }
    
    @IBOutlet weak var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.layer.contentsGravity = .resize
            avatarImageView.layer.masksToBounds = true;
            avatarImageView.image = UIImage(named: "avatar")
            avatarImageView.layer.magnificationFilter = .linear
            avatarImageView.layer.cornerRadius = 70.0
            avatarImageView.layer.borderWidth = 3.0
            avatarImageView.layer.borderColor = UIColor.systemIndigo.cgColor
            
        }
    }
    @IBOutlet weak var statusLabel: UILabel! {
        didSet {
            statusLabel.text = "В ожидании чуда.."
            statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            statusLabel.textColor = .gray
        }
    }
    @IBOutlet weak var statusTextField: UITextField! {
        didSet {
            statusTextField.backgroundColor = .white
            statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            statusTextField.textColor = .black
            
            statusTextField.layer.cornerRadius = 12
            statusTextField.layer.borderWidth = 1
            statusTextField.layer.borderColor = UIColor.black.cgColor
            statusTextField.layer.masksToBounds = true;
        }
    }
    @IBOutlet weak var setStatusButton: UIButton! {
        didSet {
            setStatusButton.setTitle("Установить статус", for: .normal)
            setStatusButton.backgroundColor = .blue
            setStatusButton.setTitleColor(.white, for: .normal)
            setStatusButton.layer.cornerRadius = 4
            setStatusButton.layer.borderColor = UIColor.black.cgColor
            setStatusButton.layer.shadowRadius = 4
            setStatusButton.layer.shadowOffset = CGSize(width: 4,height: 4)
            setStatusButton.layer.shadowColor = UIColor.black.cgColor
            setStatusButton.layer.shadowOpacity = 0.7
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = super.frame
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.frame = super.frame
    }
}
