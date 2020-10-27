//
//  PresistenceManager.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 27/10/2020.
//

import UIKit

enum PersistenceActionType {
    case add, remove
}

enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func updateWidth(favorite: Follower, actionType: PersistenceActionType, completed: @escaping(GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
                case .success(let favorites):
                    var retrievedFavorites = favorites
                    
                    switch actionType {
                        case .add:
                            guard !retrievedFavorites.contains(favorite) else {
                                completed(.alreadyInFavorites)
                                return
                            }
                            
                            retrievedFavorites.append(favorite)
                            
                        case .remove:
                            retrievedFavorites.removeAll { $0.login == favorite.login }
                    }
                    
                    completed(save(favorites: favorites))
                    
                case .failure(let error):
                    completed(error)
            }
        }
    }
    
    static func retrieveFavorites(completed: (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
            
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
