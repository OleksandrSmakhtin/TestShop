//
//  AvatarButton.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 01.11.2022.
//

import UIKit

class AvatarButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        clipsToBounds = true
        layer.cornerRadius = layer.bounds.width / 2
    }

}
