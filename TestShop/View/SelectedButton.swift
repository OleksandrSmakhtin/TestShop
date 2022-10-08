//
//  CustomCornersForButton.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class SelectedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
        layer.borderWidth = 1
        
    }

}
