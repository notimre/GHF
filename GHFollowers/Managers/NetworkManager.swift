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
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            // we can't call the custom alert here, since it'd be called from a background thread which you can't do
            completed(nil, "This username created an invalid request. Please try again.")
            return
        }
        
        // this is the basic native way to make network calls, you can use anything else to do so too
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
        }
        
        task.resume() // this starts the network call !! don't forget it
    }
}
