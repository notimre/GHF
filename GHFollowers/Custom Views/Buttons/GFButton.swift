//
//  GFButton.swift
//  GHFollowers
//
//  Created by Imre Draskovits on 16/10/2020.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // second init is for initalising with storyboards (not needed in this project)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: .zero) // no need to do more than frame than 0, becaues auto layout initalises it for us
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal) // there are differrent states of buttons, but normal is the most common one
    }
 
    private func configure() {
        layer.cornerRadius = 10
        // proper way to set a UIButton's color:
        //setTitleColor(.white, for: .normal) // not needed as the button is already white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline) // makes font adaptible (dynamic type) to settings font chose by user
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false // for auto layout
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
}
