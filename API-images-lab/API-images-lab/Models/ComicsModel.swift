//
//  ComicsModel.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import Foundation

struct ComicsFromJSON: Codable {
    let month: String
    let num: Int
    let link: String
    let year: String
    let news: String
    let safe_title: String
    let transcript: String
    let alt: String
    let img: String
    let title: String
    let day: String
    
    static func getComics(url: String, completionHandler: @escaping (Result<ComicsFromJSON,AppError>) -> () ) {
        NetworkManager.shared.fetchData(urlString: url) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let comics = try JSONDecoder().decode(ComicsFromJSON.self, from: data)
                    completionHandler(.success(comics))
                } catch {
                    completionHandler(.failure(.badJSONError))
                }
            }
        }
    }
}
