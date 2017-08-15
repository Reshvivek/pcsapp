//
//  MenuVC.swift
//  pcsapp
//
//  Created by vivek venudasan on 11/8/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//
//
import UIKit
class MenuVC :UITableViewController {
    let instanceOfmenu = [DonateVC(),CreateNewUserVC(),SettingsVC(),AboutUsVC()]
    let menuValues = ["Donate","My Profile","Settings","About PCS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = appGreenColor(alphaIs: 1)
        // let navHeight = self.navigationController?.navigationBar.frame.size.height
        // let tabHeight = self.tabBarController?.tabBar.frame.size.height
        tableView.frame = CGRect(x: 0, y:60, width: view.frame.width/2, height: view.frame.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "menuCell")
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuValues.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        cell.textLabel?.text = menuValues[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = appGreenColor(alphaIs: 1)
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < instanceOfmenu.count
        {
            let item = instanceOfmenu[indexPath.row]
            //cell.textLabel?.backgroundColor = appGreenColor(alphaIs: 1)
            self.navigationController?.pushViewController(item, animated: false)
            // self.navigationController?.present(item, animated: true, completion: nil)
        }
    }
}
