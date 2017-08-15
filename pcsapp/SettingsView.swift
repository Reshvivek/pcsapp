//
//  SettingsView.swift
//  pcsapp
//

import UIKit

struct SettingsView {
    
    let settingsCustomTable: UITableView = {
        
        let aTable = UITableView()
        
        aTable.sectionHeaderHeight = 42
        aTable.tableFooterView = UITableViewHeaderFooterView(frame:CGRect(x:0,
                                                                          y:0,
                                                                          width:aTable.frame.width,
                                                                          height:0))
        return aTable
    }()
    
}


//  custom CELL class below

class SettingsCustomCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(customCellLabel)
        customCellLabel.frame = CGRect(x:16,
                                       y:0,
                                       width: self.frame.width,
                                       height:self.frame.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let customCellLabel: UILabel = {
        
        let aLabel = UILabel()
        
        aLabel.text = "Coming Soon.."
        aLabel.textColor = appGreenColor(alphaIs: 1)
        
        return aLabel
    }()
}


//  custom HEADER class below

class UserSettingsHeader: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = appGreenColor(alphaIs: 0.9)
        contentView.addSubview(userHeaderLabel)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":userHeaderLabel]))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":userHeaderLabel]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let userHeaderLabel: UILabel = {
        
        let aLabel = UILabel()
        
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "User Settings"
        aLabel.textColor = UIColor.white
        
        return aLabel
    }()
    
}

class AppSettingsHeader: UITableViewHeaderFooterView {
    
    var someBlahText: String?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = appGreenColor(alphaIs: 0.9)
        contentView.addSubview(appHeaderLabel)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":appHeaderLabel]))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":appHeaderLabel]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let appHeaderLabel: UILabel = {
        
        let aLabel = UILabel()
        
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "App Settings"
        aLabel.textColor = UIColor.white
        
        return aLabel
    }()
    
}
