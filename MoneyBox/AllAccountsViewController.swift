//
//  AllAccountsViewController.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class AllAccountsViewController: UIViewController {
    
    private let firstAccountSummary = AccountSummaryView(accountName: "Stocks and Shares ISA", planValue: 1000, moneyboxAmount: 50)
    private let secondAccountSummary = AccountSummaryView(accountName: "General Investment Account", planValue: 1000, moneyboxAmount: 50)
    private let thirdAccountSummary = AccountSummaryView(accountName: "Lifetime ISA", planValue: 1000, moneyboxAmount: 50)


    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
    }
    
    private func setUp() {
        self.view.backgroundColor = .systemGray
        
        self.view.addSubview(firstAccountSummary)
        self.view.addSubview(secondAccountSummary)
        self.view.addSubview(thirdAccountSummary)
        
        firstAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        secondAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        thirdAccountSummary.translatesAutoresizingMaskIntoConstraints = false
        
        self.firstAccountSummary.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor).isActive = true
        self.firstAccountSummary.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.firstAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.firstAccountSummary.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        self.secondAccountSummary.topAnchor.constraint(equalTo: firstAccountSummary.bottomAnchor, constant: 12).isActive = true
        self.secondAccountSummary.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.secondAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.secondAccountSummary.centerXAnchor.constraint(equalTo: firstAccountSummary.centerXAnchor).isActive = true

        
        self.thirdAccountSummary.topAnchor.constraint(equalTo: secondAccountSummary.bottomAnchor, constant: 12).isActive = true
        self.thirdAccountSummary.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.thirdAccountSummary.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        self.thirdAccountSummary.centerXAnchor.constraint(equalTo: firstAccountSummary.centerXAnchor).isActive = true

        
    }

}
