//
//  Double + Extension.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 06.06.2022.
//

import Foundation

extension Double {
    // Добавление сепаратора тысячных для отображения числа загрузок
    func addSeparator() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        return formatter.string(for: self) ?? ""
    }
}
