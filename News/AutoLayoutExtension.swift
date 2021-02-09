//
//  AutoLayoutExtension.swift
//  Navigation
//
//  Created by Елена on 08.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func toAutolayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
