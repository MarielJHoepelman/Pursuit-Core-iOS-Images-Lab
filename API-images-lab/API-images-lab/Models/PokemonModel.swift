//
//  PokemonModel.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import Foundation

struct PokemonWrapper: Codable {
    let cards: [Cards]
    
    static func getPokemon(completionHandler: @escaping (Result<PokemonWrapper,AppError>) -> () ) {
        let url = "https://api.pokemontcg.io/v1/cards"
        
        NetworkManager.shared.fetchData(urlString: url) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let pokemons = try JSONDecoder().decode(PokemonWrapper.self, from: data)
                    completionHandler(.success(pokemons))
                } catch {
                    completionHandler(.failure(.badJSONError))                }
            }
        }
    }
    
    
}

struct Cards: Codable {
    let name: String
    let weaknesses: [Weaknesses]
    let types: String
    let set: String
}

struct Weaknesses: Codable {
    let type: String
    let value: String
}
