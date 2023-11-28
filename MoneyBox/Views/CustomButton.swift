//
//  CustomButton.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class CustomButton: UIButton {
    
    init(title: String, hasBackground: Bool = false) {
        super.init(frame: .zero)
        let titleColour: UIColor = hasBackground ? .white : .systemTeal
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColour, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        self.backgroundColor = hasBackground ? .systemGray : .clear
        self.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
