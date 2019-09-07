//
//  ComicsAPIHelper.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

//import Foundation
//
//import Foundation
////
//class ComicsAPIHelper {
//    private init () {}
//    
//    static let shared = ComicsAPIHelper()
//    let urlStr = "http://xkcd.com/614/info.0.json"
//    
//    func getComics(completionHandler: @escaping (Result<ComicsFromJSON, AppError>) -> ()) {
//        
//        NetworkManager.shared.fetchData(urlString: urlStr) { (result) in
//            switch result {
//            case .failure(let error):
//                completionHandler(.failure(.badUrl))
//            case .success(let data):
//                do {
//                    let comicInfo = try JSONDecoder().decode(ComicsFromJSON.self, from: data)
//                    completionHandler(.success(comicInfo))
//                } catch {
//                    completionHandler(.failure(.noDataError))
//                    
//                }
//            }
//        }
//        
//    }
    
//}
