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
    static var backgroundAny: UIColor {
        return UIColor(named: "backgroundAny") ?? .white
    }

    static var textColor: UIColor {
        return UIColor(named: "textColor") ?? .black
    }
}
