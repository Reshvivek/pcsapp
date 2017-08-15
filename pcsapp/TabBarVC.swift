//
//  TabBarVC.swift
//  pcsapp
//
//  Created by Yalla Code on 26/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    private var menu: MenuVC = MenuVC()
    
    private let instanceOfTabs:[UIViewController] = [DonateVC(),AboutUsVC(),
                                                     DonateListView(collectionViewLayout: UICollectionViewFlowLayout()),ScheduledPickupView(collectionViewLayout: UICollectionViewFlowLayout())]
    
    override func loadView() {
        super.loadView()
        
        self.tabBar.isTranslucent = false
        
        if AppDelegate.tabItemShow {
            instanceOfTabs[0].tabBarItem = UITabBarItem(title: "Donate", image: UIImage(named:"donate"), tag: 2)
            
            instanceOfTabs[1].tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "about"), tag: 3)
            
            AppDelegate.tabItemShow = false
            self.viewControllers = [instanceOfTabs[0],instanceOfTabs[1]]
            
        }
        else {
            let image = UIImage(named: "menu")
            
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(menuFunction))
            instanceOfTabs[0].tabBarItem = UITabBarItem(title: "Donate", image: UIImage(named:"donate"), tag: 2)
            
            instanceOfTabs[1].tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "about"), tag: 3)
            
            instanceOfTabs[2].tabBarItem = UITabBarItem(title: "Donation History", image: UIImage(named: "history"), tag: 1)
            
            instanceOfTabs[3].tabBarItem = UITabBarItem(title: " Scheduled Donation", image: UIImage(named: "history"), tag: 1)
            
            AppDelegate.tabItemShow = true
            
            self.viewControllers = [instanceOfTabs[2],instanceOfTabs[3],instanceOfTabs[0],instanceOfTabs[1]]
        }
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style:UIBarButtonItemStyle.plain, target: self, action: #selector(goToSettings))
        
    }
    
    func goToSettings() {
        
        self.navigationController?.pushViewController(SettingsVC(), animated: true)
    }
    
    func menuFunction()  {
        
        if AppDelegate.splitVar {
            
            addChildViewController(menu)
            view.addSubview(menu.view)
            AppDelegate.splitVar = false
            
        }
        else {
            
            AppDelegate.splitVar = true
            self.menu.view.removeFromSuperview()
            
        }
    }
}
