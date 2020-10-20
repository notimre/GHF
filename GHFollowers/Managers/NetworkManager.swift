//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 20/10/2020.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager() // static means every network manager will have this variable on it????
    let baseURL = "https://api.github.com/users/"
    
    private init() {} // this creates a singleton
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, ErrorMessage?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            // we can't call the custom alert here, since it'd be called from a background thread which you can't do
            completed(nil, .invalidUsername)
            return
        }
        
        // this is the basic native way to make network calls, you can use anything else to do so too
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completed(nil, .unableToComplete) // often happens when no internet
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                // this is where we set snake_case to camelCase
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                //completed(nil, error.localizedDescription) // this is a great way to show developers what's wrong with your app, not suitable for users
                completed(nil, .invalidData)
            }
        }
        
        task.resume() // this starts the network call !! don't forget it
    }
}
