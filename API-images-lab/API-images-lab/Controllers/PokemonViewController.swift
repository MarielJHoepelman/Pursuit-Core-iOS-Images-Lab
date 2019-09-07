//
//  PokemonViewController.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    var pokemons: PokemonWrapper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonTableView.dataSource = self
        loadData()
        super.viewDidLoad()
        print(pokemons)
    }
    
    private func loadData() {
        PokemonWrapper.getPokemon { (result) in
            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let pokemons):
                    self.pokemons = pokemons
                }
            }
        }
    }

}

extension PokemonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
