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
        
        aTable.register(SettingsCustomHeader.self, forHeaderFooterViewReuseIdentifier:"customHeader")
        aTable.register(SettingsCustomCell.self, forCellReuseIdentifier:"customCell")
        
        return aTable
    }()
    
}


//  custom CELL class below

private class SettingsCustomCell: UITableViewCell {
    
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

private class SettingsCustomHeader: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = appGreenColor(alphaIs: 0.9)
        contentView.addSubview(customHeaderLabel)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":customHeaderLabel]))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[chl]|",
                                                                   options: [],
                                                                   metrics:[:],
                                                                   views:["chl":customHeaderLabel]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let customHeaderLabel: UILabel = {
        
        let aLabel = UILabel()
        
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        aLabel.text = "App Settings"
        aLabel.textColor = UIColor.white
        
        return aLabel
    }()
    
}


