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
        setupSubViews()
    }

    func setupSubViews() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "gitHub_logo"), contentMode: .scaleAspectFit)
        imageView.constrainHeight(constant: view.frame.height / 4)
        let followersLabel = UILabel(text: "Followers", textAlignment: .center, font: .systemFont(ofSize: 28, weight: .medium))
        let searchTextField = SearchTextField()

        let logoStackView = UIStackView(arrangedSubviews: [imageView, followersLabel], axis: .vertical, spacing: 16)
        let stackView = UIStackView(arrangedSubviews: [logoStackView, searchTextField], axis: .vertical, spacing: 32)

        view.addSubview(stackView)
        stackView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 32, bottom: 0, right: 32))
    }
}
