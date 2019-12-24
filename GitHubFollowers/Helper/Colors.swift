//
//  Colors.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 24.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

// TODO before use is to create the colors in the color assets.
extension UIColor {
    static var background: UIColor {
        return UIColor(named: "backgroundColor") ?? .white
    }

    static var backgroundOppositeColorWithAlpha: UIColor {
        return UIColor(named: "backgroundOppositeColor+alpha") ?? .gray
    }

    static var textColor: UIColor {
        return UIColor(named: "textColor") ?? .black
    }

    static var iconColor: UIColor {
        return UIColor(named: "iconColor") ?? .gray
    }
}
