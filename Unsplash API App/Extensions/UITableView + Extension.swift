//
//  UITableView + Extension.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import UIKit

extension UITableView {
    
    func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.reuseID)
    }
    
    func dequeueReusableCell<Cell: UITableViewCell>(forIndexPath indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: Cell.reuseID, for: indexPath) as? Cell else { fatalError("Fatal error for cell at \(indexPath)") }
        return cell
    }
}
