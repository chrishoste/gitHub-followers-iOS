//
//  DefaultButton.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

enum DefaultButtonType {
    case primary
    case secondary
    case error

    public var buttonColor: UIColor {
        switch self {
        case .primary:
            return .greenButton
        case .secondary:
            return .purpleButton
        case .error:
            return .redButton

        }
    }
}

class DefaultButton: UIButton {

    init(type: DefaultButtonType = .primary, font: UIFont? = nil) {
        super.init(frame: .zero)
        self.layer.cornerRadius = 10
        self.backgroundColor = type.buttonColor
        self.titleLabel?.font = font ?? .systemFont(ofSize: 20, weight: .semibold)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
