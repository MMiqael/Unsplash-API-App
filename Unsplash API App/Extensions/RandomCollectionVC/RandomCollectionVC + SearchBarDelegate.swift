//
//  RandomCollectionVC + UISearchBarDelegate.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import UIKit

extension RandomCollectionVC: UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        search(shouldShow: false)
        photos.removeAll()
        collectionView.reloadData()
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
            self.networkService.searchPhotos(searchText: searchText) { [weak self] photos in
                guard let self = self else { return }
                self.photos = photos
                DispatchQueue.main.async() {
                    self.collectionView.reloadData()
                }
            }
        }
    }
}
