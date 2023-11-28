//
//  LoginViewController.swift
//  MoneyBox
//
//  Created by Zeynep Kara on 16.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let loginTitle = LoginHeaderView(title: "Login")
    private let emailField = TextField(fieldType: .email)
    private let passwordField = TextField(fieldType: .password)
    private let loginButton = CustomButton(title: "Login", hasBackground: true)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
        
        self.loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    private func setUp() {
        
        self.view.backgroundColor = .systemTeal

        self.view.addSubview(loginTitle)
        self.view.addSubview(emailField)
        self.view.addSubview(passwordField)
        self.view.addSubview(loginButton)

        
        loginTitle.translatesAutoresizingMaskIntoConstraints = false
        emailField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false


        self.loginTitle.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor).isActive = true
        self.loginTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.loginTitle.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.loginTitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.emailField.topAnchor.constraint(equalTo: loginTitle.bottomAnchor, constant: 12).isActive = true
        self.emailField.centerXAnchor.constraint(equalTo: loginTitle.centerXAnchor).isActive = true
        self.emailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.emailField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        self.passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 12).isActive = true
        self.passwordField.centerXAnchor.constraint(equalTo: loginTitle.centerXAnchor).isActive = true
        self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.passwordField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 150).isActive = true
        self.loginButton.centerXAnchor.constraint(equalTo: loginTitle.centerXAnchor).isActive = true
        self.loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65).isActive = true
        self.loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc private func didTapLogin() {
        print("login tapped")
    }
}

