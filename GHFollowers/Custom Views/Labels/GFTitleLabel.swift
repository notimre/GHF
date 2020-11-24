//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 19/10/2020.
//

import UIKit

class GFTitleLabel: UILabel {
    
    // designated init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero) // this calls the designated init on line 13
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }

    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true // shrinks it if it doesn't fit
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail // puts ... at the end if doesn't fit
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
