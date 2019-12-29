//
//  CustomAlertViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class CustomAlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        setupAlert()
    }

    private func setupAlert() {
        let titleLabel = UILabel(text: "Error", textAlignment: .center, font: .systemFont(ofSize: 18, weight: .bold))
        let messageLabel = UILabel(text: "Hier kommt ein bisschen mehr Text um den Fehler zu beschreiben...", textAlignment: .center, font: .systemFont(ofSize: 16, weight: .regular))
        messageLabel.textColor = .lightGray
        messageLabel.numberOfLines = 0
        let button = DefaultButton(type: .error)
        button.setTitle(localized(.OK), for: .normal)
        button.addTarget(self, action: #selector(close), for: .touchUpInside)
        button.constrainHeight(constant: 44)

        let stackView = UIStackView(arrangedSubviews: [titleLabel, messageLabel, button], axis: .vertical, spacing: 16)

        let backgroundView = UIView()
        backgroundView.layer.cornerRadius = 10
        backgroundView.backgroundColor = .white
        backgroundView.addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 32, left: 32, bottom: 32, right: 32))

        view.addSubview(backgroundView)
        backgroundView.centerInSuperview()
        backgroundView.anchor(top: nil, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 64, bottom: 0, right: 64))
    }

    @objc
    private func close() {
        self.dismiss(animated: false, completion: nil)
    }
}
