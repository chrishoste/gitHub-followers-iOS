//
//  Followers.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 28.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

// swiftlint:disable identifier_name
import Foundation

struct Follower: Decodable, Hashable {
    let id: Int
    let login: String
    let avatar_url: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Follower, rhs: Follower) -> Bool {
        return lhs.id == rhs.id
    }
}
