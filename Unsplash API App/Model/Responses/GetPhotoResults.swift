//
//  GetPhotoResults.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import Foundation
import RealmSwift

class GetPhotoResults: Object, Decodable {
    @Persisted var id: String
    @Persisted var createdAt: String
    @Persisted var height: Int
    @Persisted var width: Int
    @Persisted var downloads: Int
    @Persisted var location: Location?
    @Persisted var user: GPUser?
    @Persisted var urls: GPUrls?
    @Persisted var currentTime = ""
    @Persisted var isLiked = false

    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case height
        case width
        case downloads
        case location
        case user
        case urls
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

class Location: Object, Decodable {
    @Persisted var city: String?
    @Persisted var country: String?
}

class GPUser: Object, Decodable {
    @Persisted var name: String
}

class GPUrls: Object, Decodable {
    @Persisted var regular: String
    @Persisted var thumb: String
}
