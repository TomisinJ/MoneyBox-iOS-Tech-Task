//
//  AllAccountsViewController.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class AllAccountsViewController: UIViewController {
    
    private let firstAccountSummary = AccountSummaryView()
    private let secondAccountSummary = AccountSummaryView()
    private let thirdAccountSummary = AccountSummaryView()

    private let userInfo = AllAccountsHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        self.view.backgroundColor = .systemGray
        
        self.view.addSubview(userInfo)
        self.view.addSubview(firstAccountSummary)
        self.view.addSubview(secondAccountSummary)
        self.view.addSubview(thirdAccountSummary)
        
        userInfo.translatesAutoresizingMaskIntoConstraints = false
        firstAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        secondAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        thirdAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        
        self.userInfo.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor).isActive = true
        self.userInfo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.userInfo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.userInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        self.firstAccountSummary.topAnchor.constraint(equalTo: userInfo.bottomAnchor, constant: 150).isActive = true
        self.firstAccountSummary.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.firstAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.firstAccountSummary.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        self.secondAccountSummary.topAnchor.constraint(equalTo: firstAccountSummary.bottomAnchor, constant: 12).isActive = true
        self.secondAccountSummary.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.secondAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.secondAccountSummary.centerXAnchor.constraint(equalTo: firstAccountSummary.centerXAnchor).isActive = true

        
        self.thirdAccountSummary.topAnchor.constraint(equalTo: secondAccountSummary.bottomAnchor, constant: 12).isActive = true
        self.thirdAccountSummary.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.thirdAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.thirdAccountSummary.centerXAnchor.constraint(equalTo: firstAccountSummary.centerXAnchor).isActive = true

        
    }

}
