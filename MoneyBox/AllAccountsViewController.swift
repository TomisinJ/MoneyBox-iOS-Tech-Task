//
//  AllAccountsViewController.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class AllAccountsViewController: UIViewController {
    
    private let accountSummary = AccountSummaryView(accountName: "Stocks and Shares ISA", planValue: 1000, moneyboxAmount: 50)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUp() {
        self.view.backgroundColor = .systemGray
        
        self.view.addSubview(accountSummary)
        
        accountSummary.translatesAutoresizingMaskIntoConstraints = false
        
        self.accountSummary.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor).isActive = true
        self.accountSummary.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.accountSummary.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.accountSummary.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }

}
