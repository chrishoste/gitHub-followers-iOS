//
//  UILabel+Extension.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String, textAlignment: NSTextAlignment = .left, font: UIFont) {
        self.init()
        self.text = text
        self.textAlignment = textAlignment
        self.font = font
    }
}
