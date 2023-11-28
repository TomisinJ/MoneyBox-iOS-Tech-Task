//
//  TextField.swift
//  MoneyBox
//
//  Created by Tomisin on 28/11/2023.
//

import UIKit

class TextField: UITextField {
    
    enum TextFieldType {
        case email
        case password
    }

    private let loginFieldType: TextFieldType
    
    init(fieldType: TextFieldType) {
        self.loginFieldType = fieldType
        super.init(frame: .zero)
        
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 10
        
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
