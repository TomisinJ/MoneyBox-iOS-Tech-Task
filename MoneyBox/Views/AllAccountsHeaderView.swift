//
//  AllAccountsHeaderView.swift
//  MoneyBox
//
//  Created by Tomisin on 29/11/2023.
//

import UIKit

class AllAccountsHeaderView: UIView {
    
    private let accountUserName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "Hello"
        return label
    }()
    
    private let totalPlanValue: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.text = "100000"
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        self.accountUserName.text = "Hi"
        self.backgroundColor = .white
        
        self.setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        self.addSubview(accountUserName)
        self.addSubview(totalPlanValue)
        
        accountUserName.translatesAutoresizingMaskIntoConstraints = false
        totalPlanValue.translatesAutoresizingMaskIntoConstraints = false
        
        self.accountUserName.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.accountUserName.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor).isActive = true
        self.accountUserName.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.accountUserName.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.totalPlanValue.topAnchor.constraint(equalTo: accountUserName.bottomAnchor, constant: 10).isActive = true
        self.totalPlanValue.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor).isActive = true
        self.totalPlanValue.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor).isActive = true
        self.totalPlanValue.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.totalPlanValue.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    
}
