//
//  FollowerSearchViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class FollowerSearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundAny

        let imageView = UIImageView(image: #imageLiteral(resourceName: "gitHub_logo"), contentMode: .scaleAspectFit)
        imageView.constrainHeight(constant: view.frame.height / 4)

        let followersLabel = UILabel(text: "Followers", textAlignment: .center, font: .systemFont(ofSize: 28, weight: .medium))

        let logoStackView = UIStackView(arrangedSubviews: [imageView, followersLabel])
        logoStackView.axis = .vertical
        logoStackView.spacing = 16

        let textField = UITextField()
        textField.placeholder = "Enter Username"
        textField.textAlignment = .center
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 10
        textField.font = .systemFont(ofSize: 24)
        textField.constrainHeight(constant: 50)

        let stackView = UIStackView(arrangedSubviews: [logoStackView, textField])
        stackView.axis = .vertical
        stackView.spacing = 32

        view.addSubview(stackView)
        stackView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 32, bottom: 0, right: 32))
    }
}
