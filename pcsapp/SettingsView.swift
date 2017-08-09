//
//  SettingsView.swift
//  pcsapp
//

import UIKit

struct SettingsView {

    let settingsCustomTable: UITableView = {
        
        let aTable = UITableView()
            aTable.register(SettingsCustomCell.self, forCellReuseIdentifier:"customCell")
        
        let aHeader:UITableViewHeaderFooterView = UITableViewHeaderFooterView(frame:CGRect(x:0,
                                                                                           y:0,
                                                                                           width:aTable.frame.width,
                                                                                           height:50))
        
        let aFooter:UITableViewHeaderFooterView = UITableViewHeaderFooterView(frame:CGRect(x:0,
                                                                                           y:0,
                                                                                           width:aTable.frame.width,
                                                                                           height:0))
        
        aTable.tableHeaderView = aHeader
        aTable.tableFooterView = aFooter
                
        return aTable
    }()

}

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
            aLabel.text = "custom label"
            aLabel.textColor = appGreenColor(alphaIs: 1)
        
        return aLabel
    }()
}


