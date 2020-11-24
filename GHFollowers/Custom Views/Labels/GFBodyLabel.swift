//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 19/10/2020.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }

    private func configure() {
        textColor = .secondaryLabel // light grey color, if you want to download semantic UI app, useful to showcase these texts!
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true // shrinks it if it doesn't fit
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping // no need to set the number of lines
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
