//
//  TabBarVC.swift
//  pcsapp
//
//  Created by Yalla Code on 26/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    private let instanceOfDonateVC = DonateVC()
    private let instanceOfAboutUsVC = AboutUsVC()
    
    override func loadView() {
        super.loadView()
        
        instanceOfDonateVC.tabBarItem = UITabBarItem(title: "Donate", image: UIImage(named:"donate"), tag: 2)
        instanceOfAboutUsVC.tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "about"), tag: 3)
        
        self.viewControllers = [instanceOfDonateVC, instanceOfAboutUsVC]

    }


}
