//
//  CatalogVC.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 01.11.2022.
//

import UIKit

class CatalogVC: UIViewController {

    @IBOutlet weak var catalogCollectionView: UICollectionView!
    
    let categories = CategoryData.categories
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catalogCollectionView.delegate = self
        catalogCollectionView.dataSource = self

    }
    
}


extension CatalogVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatalogCell", for: indexPath) as! CatalogCell
        let category = categories[indexPath.row]
        cell.updateCell(category: category)
        return cell
    }
    
    
}
