//
//  SearchResultsViewController.swift
//  Pokedex
//
//  Created by Camilo Sosa on 5/5/20.
//  Copyright © 2020 Camilo Sosa. All rights reserved.
//

import Foundation
import UIKit

class SearchResultsViewController: UIViewController{
    
    @IBOutlet weak var searchPokemon: UILabel!
    private let pokemonSearch = "pokemon"
    private let storage = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let storedPokemon  = storage.string(forKey: pokemonSearch){
            searchPokemon.text = storedPokemon
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

