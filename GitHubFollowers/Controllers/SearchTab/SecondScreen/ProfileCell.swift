//
//  ProfileCell.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 02.01.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {

    let name = UILabel(text: "Chris", textAlignment: .center, font: .systemFont(ofSize: 18, weight: .semibold))

    override init(frame: CGRect) {
        super.init(frame: frame)

        name.numberOfLines = 1
        name.adjustsFontSizeToFitWidth = true

        let imageview = UIView()
        imageview.backgroundColor = .green
        imageview.layer.cornerRadius = 10
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1/1).isActive = true

        let stackView = UIStackView(arrangedSubviews: [imageview, name], axis: .vertical, spacing: 8)
        stackView.alignment = .center

        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 8, left: 8, bottom: 0, right: 8))
    }

    func setup(follower: Follower) {
        name.text = follower.login
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
