//
//  Reusable + Extension.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import UIKit

extension Reusable where Self: UIView {
    static var reuseID: String {
        return String(describing: self)
    }
}
