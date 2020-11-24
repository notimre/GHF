//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 20/10/2020.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let cache = NetworkManager.shared.cache
    let placeholderImage = UIImage(named: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configrue()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configrue() {
        layer.cornerRadius = 10
        clipsToBounds = true // makes the images round as well
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
