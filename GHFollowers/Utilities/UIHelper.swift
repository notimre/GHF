//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 22/10/2020.
//

import UIKit

// It's not a struct because we could initalise an empty UIHelper
enum UIHelper {
  
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width // total width of the current screen, doesn't matter which one
        let padding: CGFloat = 12
        let miniumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (miniumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40) // + 40 adds extra space for the label
        
        return flowLayout
    }
}
