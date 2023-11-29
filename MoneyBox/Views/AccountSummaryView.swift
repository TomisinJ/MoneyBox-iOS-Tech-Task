//
//  AccountSummaryView.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class AccountSummaryView: UIView {
    
    private let accountName: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "Account Name"
        return label
    }()
    
    private let planValueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20)
        label.text = "Plan Value: "
        return label
    }()
    
    private let moneyboxAmount: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20)
        label.text = "Moneybox: "
        return label
    }()
    
    init(accountName: String, planValue: Int, moneyboxAmount: Int) {
        super.init(frame: .zero)
        
        self.accountName.text = accountName
        
        self.backgroundColor = UIColor(named: "AccentColor")
        self.layer.cornerRadius = 10
                
        self.setUp()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        self.addSubview(accountName)
        self.addSubview(planValueLabel)
        self.addSubview(moneyboxAmount)
        
        accountName.translatesAutoresizingMaskIntoConstraints = false
        planValueLabel.translatesAutoresizingMaskIntoConstraints = false
        moneyboxAmount.translatesAutoresizingMaskIntoConstraints = false
        
        self.accountName.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.accountName.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor).isActive = true
        self.accountName.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.accountName.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.planValueLabel.topAnchor.constraint(equalTo: accountName.bottomAnchor, constant: 10).isActive = true
        self.planValueLabel.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.planValueLabel.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor).isActive = true
        self.planValueLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.planValueLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.moneyboxAmount.topAnchor.constraint(equalTo: planValueLabel.bottomAnchor, constant: 10).isActive = true
        self.moneyboxAmount.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.moneyboxAmount.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor).isActive = true
        self.moneyboxAmount.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.moneyboxAmount.heightAnchor.constraint(equalToConstant: 25).isActive = true

    }
    
}
