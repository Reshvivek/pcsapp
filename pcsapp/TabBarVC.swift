//
//  TabBarVC.swift
//  pcsapp
//
//  Created by Yalla Code on 26/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    private let instanceOfTabs:[UIViewController] = [DonateVC(),AboutUsVC()]
    
    override func loadView() {
        super.loadView()
        
        self.tabBar.isTranslucent = false
        
        instanceOfTabs[0].tabBarItem = UITabBarItem(title: "Donate", image: UIImage(named:"donate"), tag: 2)
            instanceOfTabs[1].tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "about"), tag: 3)
        
        self.viewControllers = [instanceOfTabs[0],instanceOfTabs[1]]
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style:UIBarButtonItemStyle.plain, target: self, action: #selector(goToSettings))

    }

    func goToSettings() {
        
        self.navigationController?.pushViewController(SettingsVC(), animated: true)
    }

}
