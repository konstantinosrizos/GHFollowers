//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Konstantinos Rizos on 1/3/20.
//  Copyright © 2020 Konstantinos Rizos. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]

    }
    
    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoriteVC = FavoritesListViewController()
        favoriteVC.title = "Favorites"
        favoriteVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoriteVC)
    }
}
