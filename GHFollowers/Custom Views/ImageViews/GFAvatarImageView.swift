//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 20/10/2020.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let cache = NetworkManager.shared.cache
    let placeholderImage = Images.placeholder
    
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
    
    func downloadImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(from: url) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
