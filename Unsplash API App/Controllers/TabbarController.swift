//
//  TabbarController.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class TabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        tabBar.backgroundColor = .systemGray6
        
        let photosVC = RandomCollectionVC()
        let favoriteVC = FavoriteTableVC()
        
        viewControllers = [createNavigationController(rootViewController: photosVC, title: TabbarTitleNames.searchPhotosTabbarTitle.rawValue, image: UIImage(systemName: ImageNames.searchPhotosTabbarImage.rawValue)!),
                           createNavigationController(rootViewController: favoriteVC, title: TabbarTitleNames.favoritePhotosTabbarTitle.rawValue, image: UIImage(systemName: ImageNames.favoritePhotosTabbarImage.rawValue)!)]
    }
    
    private func createNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image

        return navigationVC
    }
}
