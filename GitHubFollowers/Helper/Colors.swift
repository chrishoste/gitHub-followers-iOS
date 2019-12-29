//
//  Colors.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 24.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

extension UIColor {
    static var backgroundAny: UIColor {
        return UIColor(named: "backgroundAny") ?? .white
    }

    static var textColor: UIColor {
        return UIColor(named: "textColor") ?? .black
    }

    static var greenButton: UIColor {
        return UIColor(named: "greenButton") ?? .green
    }

    static var purpleButton: UIColor {
        return UIColor(named: "purpleButton") ?? .purple
    }

    static var redButton: UIColor {
        return UIColor(named: "redButton") ?? .red
    }
}
