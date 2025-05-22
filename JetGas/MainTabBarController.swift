//
//  MainTabBarController.swift
//  JetGas
//
//  Created by Esna nur Yılmaz on 22.05.2025.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let homeVC = HomePageViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Ana Sayfa",
                                         image: UIImage(systemName: "house"),
                                         selectedImage: UIImage(systemName: "house.fill"))
        let productVC = ProductsViewController()
        productVC.tabBarItem = UITabBarItem(title: "Ürünler",
                                          image: UIImage(systemName: "cube.box"),
                                          selectedImage: UIImage(systemName: "cube.box.fill"))
        
        let cartVC = CartViewController()
        cartVC.tabBarItem = UITabBarItem(title: "Sepetim",
                                          image: UIImage(systemName: "cart"),
                                          selectedImage: UIImage(systemName: "cart.fill"))
        
        let campaignVC = ProductsViewController()
        campaignVC.tabBarItem = UITabBarItem(title: "Kampanyalar",
                                          image: UIImage(systemName: "tag.circle"),
                                          selectedImage: UIImage(systemName: "tag.circle.fill"))
        
        viewControllers = [
                    UINavigationController(rootViewController: homeVC),
                    UINavigationController(rootViewController: productVC),
                    UINavigationController(rootViewController: cartVC),
                    UINavigationController(rootViewController: campaignVC)

                ]
        

    }
}
