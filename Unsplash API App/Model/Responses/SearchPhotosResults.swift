//
//  SearchResults.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import Foundation

struct SearchPhotosResults: Decodable {
    let total: Int
    let results: [Photos]
}

struct Photos: Decodable {
    let id: String
    let width: Int
    let height: Int
    let user: SPUser
    let urls: SPUrls
}

struct SPUser: Decodable {
    let name: String
}

struct SPUrls: Decodable {
    let small: String
}
