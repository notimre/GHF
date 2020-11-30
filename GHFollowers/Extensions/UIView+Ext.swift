//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 30/11/2020.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    // ... = any amount of parameters can be put into the argument
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
