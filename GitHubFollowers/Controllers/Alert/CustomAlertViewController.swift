//
//  CustomAlertViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class CustomAlertViewController: UIViewController {

    private lazy var titleLabel = UILabel(text: "", textAlignment: .center, font: .systemFont(ofSize: 18, weight: .bold))
    private lazy var messageLabel = UILabel(text: "", textAlignment: .center, font: .systemFont(ofSize: 16, weight: .regular))
    private lazy var actionButton = DefaultButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        setupAlert()
    }

    private func setupAlert() {
        let backgroundView = UIView()
        backgroundView.layer.cornerRadius = 10
        backgroundView.backgroundColor = .white

        titleLabel.numberOfLines = 0
        messageLabel.textColor = .lightGray
        messageLabel.numberOfLines = 0
        actionButton.constrainHeight(constant: 44)

        let stackView = UIStackView(arrangedSubviews: [titleLabel, messageLabel, actionButton], axis: .vertical, spacing: 16)

        backgroundView.addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 32, left: 32, bottom: 32, right: 32))

        view.addSubview(backgroundView)
        backgroundView.centerInSuperview()
        backgroundView.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 64, bottom: 0, right: 64))
    }

    func setup(title: String, message: String, buttonTitle: String, buttonType: DefaultButtonType = .primary) {
        titleLabel.text = title
        messageLabel.text = message
        actionButton.setTitle(buttonTitle, for: .normal)
        actionButton.addTarget(self, action: #selector(close), for: .touchUpInside)
        actionButton.setType(type: buttonType)
    }

    @objc
    private func close() {
        self.dismiss(animated: false, completion: nil)
    }
}
