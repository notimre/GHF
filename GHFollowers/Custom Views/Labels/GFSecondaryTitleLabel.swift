//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 25/10/2020.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }

    private func configure() {
        textColor = .secondaryLabel // light grey color, if you want to download semantic UI app, useful to showcase these texts!
        adjustsFontSizeToFitWidth = true // shrinks it if it doesn't fit
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail // puts "..." at the end if doesn't fit
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
