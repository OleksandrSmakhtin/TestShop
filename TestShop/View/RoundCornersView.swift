//
//  RoundCornersView.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 09.10.2022.
//

import UIKit

class RoundCornersView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        clipsToBounds = true
        layer.cornerRadius = 15
    }

}
