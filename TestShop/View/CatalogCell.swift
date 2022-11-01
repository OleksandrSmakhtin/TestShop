//
//  CatalogCell.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 01.11.2022.
//

import UIKit

class CatalogCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    func updateCell(category: String) {
        categoryTitleLbl.text = category
    }
    
}
