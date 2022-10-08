//
//  CircleView.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 08.10.2022.
//

import UIKit

class CircleView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = layer.bounds.width / 2
        clipsToBounds = true
    }

}
