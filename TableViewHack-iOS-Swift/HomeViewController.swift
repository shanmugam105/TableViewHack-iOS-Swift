//
//  HomeViewController.swift
//  TableViewHack-iOS-Swift
//
//  Created by Sparkout on 12/10/22.
//

import UIKit

enum HomeItemList: CaseIterable {
    case details
    case filter
    case brand
    case user
    case total
    
    var title: String {
        switch self {
        case .filter: return "Filter cell"
        case .brand: return "Brand list"
        case .user: return "User list"
        case .total: return "Total amount details"
        case .details: return "Details"
        }
    }
    
    func tableCell() -> UITableViewCell {
        switch self {
        case .filter:
            let cell = CustomCollectionCell1()
            cell.configureView(filterTitle: title)
            return cell
        case .brand:
            let cell = CustomCollectionCell1()
            cell.configureView(brandTitle: title)
            return cell
        case .user:
            let cell = CustomCollectionCell3()
            cell.textLabel?.text = title
            return cell
        case .total:
            let cell = CustomCollectionCell3()
            cell.textLabel?.text = title
            return cell
        case .details:
            let cell = CustomCollectionCell3()
            cell.textLabel?.text = title
            return cell
        }
    }
}

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        HomeItemList.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        HomeItemList.allCases[indexPath.row].tableCell()
    }
}

extension HomeViewController: UITableViewDelegate {}

class CustomCollectionCell1: UITableViewCell {
    func configureView(filterTitle: String?) {
        textLabel?.text = filterTitle
        textLabel?.textColor = .red
    }
    
    func configureView(brandTitle: String?) {
        textLabel?.text = brandTitle
        textLabel?.textColor = .blue
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

