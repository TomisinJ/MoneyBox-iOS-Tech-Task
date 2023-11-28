//
//  LoginViewController.swift
//  MoneyBox
//
//  Created by Zeynep Kara on 16.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let loginTitle = LoginHeaderView(title: "Login")
    private let usernameField = TextField(fieldType: .email)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        
        self.view.backgroundColor = .systemTeal

        self.view.addSubview(loginTitle)
        self.view.addSubview(usernameField)
        
        loginTitle.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false

        self.loginTitle.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.loginTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.loginTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.loginTitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.usernameField.topAnchor.constraint(equalTo: loginTitle.bottomAnchor, constant: 12).isActive = true
        self.usernameField.centerXAnchor.constraint(equalTo: loginTitle.centerXAnchor).isActive = true
        self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.usernameField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        
    }
}

