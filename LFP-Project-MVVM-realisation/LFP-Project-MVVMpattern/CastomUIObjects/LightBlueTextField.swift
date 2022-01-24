//
//  LightBlueTextField.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import UIKit

class LightBlueTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    init() {
        super.init(frame: .zero)
        borderStyle = .roundedRect
        layer.borderWidth = 1
        layer.cornerRadius = 8
        textColor = .black
        backgroundColor = UIColor(red: 0.97, green: 0.98, blue: 1.0, alpha: 1.0)
        layer.borderColor = CGColor(red: 0.73, green: 0.74, blue: 0.85, alpha: 1.0)
        returnKeyType = UIReturnKeyType.done
        autocorrectionType = UITextAutocorrectionType.no
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
