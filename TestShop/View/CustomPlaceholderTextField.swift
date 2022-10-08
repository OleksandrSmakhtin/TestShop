//
//  CustomPlaceholderTextField.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class CustomPlaceholderTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        clipsToBounds = true
        layer.cornerRadius = 15
        if accessibilityLabel == "Login" {
            attributedPlaceholder = NSAttributedString(string: "Email or number", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.4952918887, green: 0.4656484723, blue: 0.669565618, alpha: 1)])
        } else if accessibilityLabel == "Password" {
            attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.4952918887, green: 0.4656484723, blue: 0.669565618, alpha: 1)])
        } else {
            attributedPlaceholder = NSAttributedString(string: "Confirm password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.4952918887, green: 0.4656484723, blue: 0.669565618, alpha: 1)])
        }
    }

    // text padding
    var textPadding = UIEdgeInsets(
            top: 10,
            left: 15,
            bottom: 10,
            right: 20
        )
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

}
