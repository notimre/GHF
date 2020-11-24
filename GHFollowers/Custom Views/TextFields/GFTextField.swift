//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 16/10/2020.
//
//  This app has very little textfields used, often good practise to specify its name even further what type of textfield it is
//  Eg. AuthenticationTextField
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor // When you deal with layer.borderColor, you have to use CG (Core Graphics) colours.
        
        textColor = .label // this is also a color, black on whitemode, white on dark mode
        tintColor = .label // blinking cursor
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no // turns off auto correction
        returnKeyType = .go
        clearButtonMode = .whileEditing
        placeholder = "Enter a username"
    }
    
}
