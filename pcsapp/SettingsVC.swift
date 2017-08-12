//
//  Settings.swift
//  pcsapp
//
//  Created by Yalla Code on 8/8/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    private let instanceOfSettingsView = SettingsView()
    
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "customHeader")
    }
    
}
