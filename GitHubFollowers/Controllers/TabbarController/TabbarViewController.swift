//
//  TabbarViewController.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            createNavViewController(viewController: FollowerSearchViewController(), title: localized(.SEARCH), imageName: "magnifyingglass"),
            createNavViewController(viewController: ViewController(), title: localized(.FAVE), imageName: "star.fill")
        ]
    }

    private func createNavViewController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {

        viewController.navigationItem.title = title

        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)

        return navController
    }
}
