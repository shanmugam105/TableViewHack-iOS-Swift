//
//  HomeViewController.swift
//  TableViewHack-iOS-Swift
//
//  Created by Sparkout on 12/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    let cellTypes: [String] = [ "Filter cell", "Brand list", "User list", "Total amount details" ]
    @IBOutlet weak var tableView: UITableView!
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellTypes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = CustomCollectionCell1()
            cell.textLabel?.text = cellTypes[0]
            return cell
        case 1:
            let cell = CustomCollectionCell2()
            cell.textLabel?.text = cellTypes[1]
            return cell
        case 2:
            let cell = CustomCollectionCell3()
            cell.textLabel?.text = cellTypes[2]
            return cell
        default:
            let cell = CustomCollectionCell3()
            cell.textLabel?.text = cellTypes[3]
            return cell
        }
    }
}

extension HomeViewController: UITableViewDelegate {}

class CustomCollectionCell1: UITableViewCell {
    func configureView(filterTitle: String?) {
        textLabel?.text = filterTitle
    }
}

class CustomCollectionCell2: UITableViewCell {
    func configureView(title: String?) {
        textLabel?.text = title
    }
}

class CustomCollectionCell3: UITableViewCell {
    func configureView(title: String?) {
        textLabel?.text = title
    }
    
    func configureView(amountTitle: String?) {
        textLabel?.text = amountTitle
        textLabel?.textColor = .red
    }
}

