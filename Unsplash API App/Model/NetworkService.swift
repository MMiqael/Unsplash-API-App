//
//  NetworkService.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import Foundation
import Alamofire

class NetworkService {
    
    let baseUrl = "https://api.unsplash.com"
    
    // MARK: - Search photos
    func searchPhotos(searchText: String, completion: @escaping ([Photos]) -> Void) {
    
        let path = "/search/photos"
        let url = baseUrl + path
//        let clientId = Session.shared.clientId
        
        let header: HTTPHeaders = [
            "Authorization": "Client-ID eTMuOjYsTqucqjFME7pde2fYjID_wYPsNXK02c4S4ps"
        ]
        
        let params: Parameters = [
            "query": searchText,
            "per_page": "15"
        ]
        
        AF.request(url, method: .get, parameters: params, headers: header).responseData { response in
            guard let data = response.value else { return }
            do {
                let photos = try JSONDecoder().decode(SearchPhotosResults.self, from: data).results
                completion(photos)
            } catch {
                print(error)
            }
        }
    }
    
    
    // MARK: - Get a photo
    func getPhoto(photoId: String, completion: @escaping (GetPhotoResults) -> Void) {

        let path = "/photos/\(photoId)"
        let url = baseUrl + path

        let header: HTTPHeaders = [
            "Authorization": "Client-ID eTMuOjYsTqucqjFME7pde2fYjID_wYPsNXK02c4S4ps"
        ]

        AF.request(url, method: .get, headers: header).responseData { response in
            guard let data = response.value else { return }
            do {
                let photo = try JSONDecoder().decode(GetPhotoResults.self, from: data)
                completion(photo)
            } catch {
                print(error)
            }
        }
    }
}
