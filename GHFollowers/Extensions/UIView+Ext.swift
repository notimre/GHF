//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 30/11/2020.
//

import UIKit

extension UIView {
    // ... = any amount of parameters can be put into the argument
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
