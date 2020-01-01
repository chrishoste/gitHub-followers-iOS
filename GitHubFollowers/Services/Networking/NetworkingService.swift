//
//  NetworkingService.swift
//  GitHubFollowers
//
//  Created by Christophe Hoste on 28.12.19.
//  Copyright © 2019 Christophe Hoste. All rights reserved.
//

import Foundation

class NetworkingService {

    private let session: URLSession

    init(session: URLSession = URLSession.shared) {
        self.session = session
    }

    private func fetch<T: Decodable>(objectType: T.Type, urlString: String, completion: @escaping (Result<T, Error>) -> Void) {

        guard let url = URL(string: urlString) else {
            return
        }

        session.dataTask(with: url) { (data, response, err) in

            if let error = err {
                completion(.failure(error))
            }

            guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(NetworkingError.noValidData))
                return
            }

            guard 200 ..< 300 ~= httpResponse.statusCode else {
                completion(.failure(NetworkingError.statusCode))
                return
            }

            do {
                let fetchedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(fetchedData))
            } catch let error {
                completion(.failure(error))
            }

        }.resume()
    }

    func getProfiles(username: String, completion: @escaping (Result<[Follower], Error>) -> Void) {
        fetch(objectType: [Follower].self, urlString: AppURLs.followersURL(username: username)) { (result) in
            completion(result)
        }
    }
}
