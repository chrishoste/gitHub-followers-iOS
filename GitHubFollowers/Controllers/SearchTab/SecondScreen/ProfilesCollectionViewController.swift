//
//  ProfilesCollectionViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class ProfilesCollectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Chris"
        view.backgroundColor = .backgroundAny
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
