//
//  NetworkingService+Errors.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 29.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import Foundation

public enum NetworkingError: Error {
    case statusCode
    case noValidData
}

extension NetworkingError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .statusCode:
            return "Status code was not 200 ..<300"
        case .noValidData:
            return "No valid data / response"
        }
    }
}
