//
//  LoginViewController.swift
//  MoneyBox
//
//  Created by Zeynep Kara on 16.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let loginTitle = LoginView(title: "Welcome")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        
        self.view.backgroundColor = .systemTeal

        self.view.addSubview(loginTitle)
        
        loginTitle.translatesAutoresizingMaskIntoConstraints = false
        
        self.loginTitle.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.loginTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.loginTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.loginTitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
    }
}
