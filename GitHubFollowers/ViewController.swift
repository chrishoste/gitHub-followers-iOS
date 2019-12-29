//
//  ViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 24.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundAny

        NetworkingService().fetch(objectType: [Followers].self, urlString: AppURLs.followersURL(username: "chrishoste")) { result in

            switch result {
            case .success(let followers):
                print("\(followers.count) followers.")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
