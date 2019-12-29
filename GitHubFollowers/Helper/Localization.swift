//
//  Localization.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 24.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

// swiftlint:disable identifier_name
import Foundation

public func localized(_ key: LocalizationKey) -> String {
    return NSLocalizedString(key.rawValue, comment: "localized")
}

public enum LocalizationKey: String {

    case DONE, OK, YES, NO
    case SEARCH
    case FAVE
    case ENTER_USERNAME
    case FOLLOWERS
    case GET_PROFILES
}
