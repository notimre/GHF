//
//  SceneDelegate.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 16/10/2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds) // fills up the full screen
        window?.windowScene = windowScene
        window?.rootViewController = GFTabBarController()
        window?.makeKeyAndVisible() 
        
        configureNavigationBar()
    }
    

    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
}
