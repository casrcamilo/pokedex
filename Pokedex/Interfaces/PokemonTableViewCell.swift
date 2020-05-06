//
//  PokemonTableViewCell.swift
//  Pokedex
//
//  Created by Camilo Sosa on 5/5/20.
//  Copyright © 2020 Camilo Sosa. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonID: UILabel!
    @IBOutlet weak var pokemonClass1: UIView!
    @IBOutlet weak var pokemonClass2: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(image: String, name: String, id: Int){
        pokemonName.text = name
        pokemonID.text = String(id)
        
    }
    
}
