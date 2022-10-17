//
//  LocationsVC.swift
//  TestShop
//
//  Created by Oleksandr Smakhtin on 09.10.2022.
//

import UIKit

class LocationsVC: UIViewController {

    @IBOutlet weak var locationTableView: UITableView!
    
    var locations = LocationsData.locations
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationTableView.dataSource = self
        locationTableView.delegate = self
    }
}

extension LocationsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let location = locations[indexPath.row]
        if location.isExpanded == true {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandedLocationCell") as! ExpandedLocationCell
            cell.updateCell(location: location)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ClosedLocationCell") as! ClosedLocationCell
            let city = locations[indexPath.row].city
            cell.updateCell(city: city)
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        
        if locations[indexPath.row].isExpanded == false {
            locations[indexPath.row].isExpanded = true
        } else {
            locations[indexPath.row].isExpanded = false
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
