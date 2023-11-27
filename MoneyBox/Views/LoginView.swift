//
//  LoginView.swift
//  MoneyBox
//
//  Created by Tomisin on 27/11/2023.
//

import UIKit

class LoginView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "Login"
        return label
    }()
    
    init(title: String) {
        super.init(frame: .zero)
        
        self.titleLabel.text = title
        
        self.setUp()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        self.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.titleLabel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.titleLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        self.titleLabel.heightAnchor.constraint(equalTo: titleLabel.widthAnchor).isActive = true
        
        
        
    }

}