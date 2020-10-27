//
//  FavoritesListVC.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 16/10/2020.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemOrange // system colours automatically adapt better to dark mode as well
    
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
