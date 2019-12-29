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
        setupButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func setupSubViews() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "gitHub_logo"), contentMode: .scaleAspectFit)
        imageView.constrainHeight(constant: view.frame.height / 4)
        let followersLabel = UILabel(text: localized(.FOLLOWERS), textAlignment: .center, font: .systemFont(ofSize: 28, weight: .medium))
        let searchTextField = SearchTextField()

        let logoStackView = UIStackView(arrangedSubviews: [imageView, followersLabel], axis: .vertical, spacing: 16)
        let stackView = UIStackView(arrangedSubviews: [logoStackView, searchTextField], axis: .vertical, spacing: 32)

        view.addSubview(stackView)
        stackView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 32, bottom: 0, right: 32))
    }

    private func setupButton() {
        let button = DefaultButton()
        button.setTitle(localized(.GET_PROFILES), for: .normal)
        button.addTarget(self, action: #selector(getProfiles), for: .touchUpInside)

        view.addSubview(button)
        button.constrainHeight(constant: 50)
        button.anchor(top: nil, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 32, bottom: 32, right: 32))
    }

    @objc
    private func getProfiles() {
        //navigationController?.pushViewController(ProfilesCollectionViewController(), animated: true)
        let vc = CustomAlertViewController()
        vc.modalPresentationStyle = .overFullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
    }
}