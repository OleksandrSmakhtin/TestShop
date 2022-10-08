//
//  DeselectedButton.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class DeselectedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.5400388837, green: 0.4761476517, blue: 0.9221618772, alpha: 1)
    }

}
