//
//  Settings.swift
//  pcsapp
//
//  Created by Yalla Code on 8/8/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    fileprivate let instanceOfSettingsView = SettingsView()
    
    override func loadView() {
        super.loadView()
        
        instanceOfSettingsView.settingsCustomTable.delegate = self
        instanceOfSettingsView.settingsCustomTable.dataSource = self
        
        view.addSubview(instanceOfSettingsView.settingsCustomTable)
        instanceOfSettingsView.settingsCustomTable.frame = CGRect(x: 0,
                                                                  y: 0,
                                                                  width: self.view.frame.width,
                                                                  height: self.view.frame.height)
        
    }
    
}


extension SettingsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            instanceOfSettingsView.settingsCustomTable.register(UserSettingsHeader.self, forHeaderFooterViewReuseIdentifier:"customHeader")
            
        } else if section == 1 {
            
            instanceOfSettingsView.settingsCustomTable.register(AppSettingsHeader.self, forHeaderFooterViewReuseIdentifier:"customHeader")
            
        }
        
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "customHeader")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        instanceOfSettingsView.settingsCustomTable.register(SettingsCustomCell.self, forCellReuseIdentifier:"customCell")
        
        return tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
    }
    
}
