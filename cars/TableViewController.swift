//
//  TableViewController.swift
//  cars
//
//  Created by yauheni prakapenka on 12/10/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let data: [CarModel] = [CarModel(year: "1995", manufacturer: "BMW", model: "5", body: "E39", carImage: #imageLiteral(resourceName: "bmw-m5-e39-8")),
                            CarModel(year: "2010", manufacturer: "Nissan", model: "Juke", body: "B", carImage: #imageLiteral(resourceName: "nissan-juke")),
                            CarModel(year: "1973", manufacturer: "Volkswagen", model: "Beetle", body: "1303", carImage: #imageLiteral(resourceName: "volkswagen type 1"))]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Справочник автомобилей"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.manufacturerModelBodyLabel.text = data[indexPath.row].manufacturer + " \(data[indexPath.row].model)" + " \(data[indexPath.row].body)"
        cell.yearLabel.text = data[indexPath.row].year
        cell.carImageView.image = data[indexPath.row].carImage
        cell.carImageView.layer.cornerRadius = 12
        
        return cell
    } 
    
}
