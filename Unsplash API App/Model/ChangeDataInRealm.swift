//
//  ChangeDataInRealm.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 06.06.2022.
//

import Foundation
import RealmSwift

class ChangeDataInRealm {
    
    static func saveData (_ data: GetPhotoResults) {
        do {
            let config = Realm.Configuration.defaultConfiguration
            
            let realm = try Realm(configuration: config)
            try realm.write {
                realm.add(data)
            }
            print(realm.configuration.fileURL!)
        } catch {
            print(error)
        }
    }
    
    static func deleteData (_ data: GetPhotoResults) {
        
        guard let location = data.location else { return }
        guard let urls = data.urls else { return }
        guard let user = data.user else { return }
        
        
        do {
            let realm = try Realm()
            try realm.write {
                realm.delete(data)
                realm.delete(location)
                realm.delete(urls)
                realm.delete(user)
            }
            print("OBJECT DELETED", realm.configuration.fileURL!)
        } catch {
            print(error)
        }
    }
}
