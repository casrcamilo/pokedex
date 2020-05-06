//
//  ViewController.swift
//  Pokedex
//
//  Created by Camilo Sosa on 5/4/20.
//  Copyright © 2020 Camilo Sosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK - Reference UI
    @IBOutlet weak var searchTextField: UISearchBar!
    @IBOutlet weak var tableView: HomeTableViewController!
    
    private let pokemonSearch = "pokemon"
    private let storage = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchTextField.delegate = self
        tableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
    }

}

extension ViewController : UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchPokemon = searchTextField.text
        storage.set(searchPokemon, forKey: pokemonSearch)
        let storyBoard : UIStoryboard = UIStoryboard(name : "SearchResults", bundle:nil)
        let searchResults = storyBoard.instantiateViewController(withIdentifier: "searchResultsView") as! SearchResultsViewController
        self.present(searchResults, animated : true, completion : nil)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath)
            (cell as? PokemonTableViewCell)?.setupCell(image: "pikachu.jpg", name: "pikachu", id: 1)
            return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fue seleccionada")
    }
}
