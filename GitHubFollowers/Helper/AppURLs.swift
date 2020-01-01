//
//  AppURLs.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import Foundation

struct AppURLs {

    private struct Domains {
        fileprivate static let DevBaseURL = "https://api.github.com"
        fileprivate static let ProdBaseURL = "https://api.github.com"
    }

    private struct Routes {
        fileprivate static let Users = "/users"
        fileprivate static let Followers = "/followers"
    }

    static func followersURL(username: String) -> String {
        return Domains.DevBaseURL + Routes.Users + "/\(username)" + Routes.Followers
    }
}
