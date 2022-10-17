//
//  ClosedLocationCell.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 16.10.2022.
//

import UIKit

class ClosedLocationCell: UITableViewCell {

    @IBOutlet weak var cityLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func updateCell(city: String) {
        cityLbl.text = city
    }
    
}
