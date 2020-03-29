//
//  SearchTextField.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class SearchTextField: UITextField {

    init() {
        super.init(frame: .zero)
        self.placeholder = localized(.ENTER_USERNAME)
        self.textAlignment = .center
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.font = .systemFont(ofSize: 24)
        self.text = "chrishoste"
        self.constrainHeight(constant: 50)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func getText() -> String? {
        if let serachText = text, !serachText.isEmpty {
            return serachText
        }
        return nil
    }
}
