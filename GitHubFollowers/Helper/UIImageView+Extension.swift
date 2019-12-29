//
//  UIImageView+Extension.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode = .scaleToFill, tintColor: UIColor = .textColor) {
        self.init()
        self.image = image
        self.contentMode = contentMode
        self.tintColor = tintColor
    }
}
