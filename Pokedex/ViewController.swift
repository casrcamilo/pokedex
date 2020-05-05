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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchTextField.delegate = self

    }

}

extension ViewController : UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print(searchTextField.text!)
    }
}
