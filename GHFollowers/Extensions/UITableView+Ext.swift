//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 30/11/2020.
//

import UIKit

extension UITableView {
  
//    Left this in for reference
//    func reloadDataOnMainThread() {
//        DispatchQueue.main.async { self.reloadData() }
//    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
