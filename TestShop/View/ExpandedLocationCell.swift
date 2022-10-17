//
//  LocationCell.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 16.10.2022.
//

import UIKit

class ExpandedLocationCell: UITableViewCell {

    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func updateCell(location: Location) {
        cityLbl.text = location.city
        addressLbl.text = "Address: \(location.address)"
        numberLbl.text = "Number: \(location.number)"
    }
}
