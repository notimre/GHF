//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 19/10/2020.
//

import UIKit // also imports foundation
import SafariServices

fileprivate var containerView: UIView!

extension UIViewController {
    // it's "illegal" to present a UI element from the background thread
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        
        // This throws it on the main thread
        // Calling it here avoids calling it every time when needed in other places
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredBarTintColor = .systemBackground
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
