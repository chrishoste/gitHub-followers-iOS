//
//  ProfilesCollectionViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class ProfilesCollectionViewController: UIViewController {

    let followers: [Follower]

    init(followers: [Follower]) {
        self.followers = followers
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Chris"
        view.backgroundColor = .backgroundAny

        debugPrint(followers.count)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
