//
//  CreateNewUserView.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct CreateNewUserView{
    
    let newUserInfoBox: UIView! = UIView()
    
    func layoutNewUserInfoBox() -> UIView {
        
        let views:[String:Any] = ["fnameLabel": firstNameLabel,
                                  "fnameTxtfld": firstNameTxtfld,
                                  "lnameLabel": lastNameLabel,
                                  "lnameTxtfld": lastNameTxtfld,
                                  "emailLabel": emailLabel,
                                  "emailTxtfld": emailTxtfld,
                                  "passwordLabel": passwordLabel,
                                  "passwordTxtfld": passwordTxtfld,
                                  "mobileNumLabel": mobileNumLabel,
                                  "mobileNumTxtfld": mobileNumTxtfld,
                                  "newUserButton": newUserButton
                                  ]
        let metrics:[String:Any] = ["vPadding": 280/12]
        
        newUserInfoBox.translatesAutoresizingMaskIntoConstraints = false
        newUserInfoBox.backgroundColor = appGreenColor(alphaIs: 0.3)
        
                newUserInfoBox.addSubview(firstNameLabel)
                newUserInfoBox.addSubview(firstNameTxtfld)
        
                newUserInfoBox.addSubview(lastNameLabel)
                newUserInfoBox.addSubview(lastNameTxtfld)
        
                newUserInfoBox.addSubview(emailLabel)
                newUserInfoBox.addSubview(emailTxtfld)
        
                newUserInfoBox.addSubview(passwordLabel)
                newUserInfoBox.addSubview(passwordTxtfld)
                    passwordTxtfld.isSecureTextEntry = true
        
                newUserInfoBox.addSubview(mobileNumLabel)
                newUserInfoBox.addSubview(mobileNumTxtfld)
                
                //newUserInfoBox.addSubview(newUserButton)
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[fnameLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[fnameLabel]-[fnameTxtfld]-30-|", options: [], metrics: [:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[lnameLabel(==fnameLabel)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[lnameLabel]-[lnameTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[emailLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[emailLabel]-[emailTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[passwordLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[passwordLabel]-[passwordTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[mobileNumLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[mobileNumLabel]-[mobileNumTxtfld]-30-|", options: [], metrics: [:], views: views))

        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-vPadding-[fnameLabel(32)]-vPadding-[lnameLabel(==fnameLabel)]-vPadding-[emailLabel(==fnameLabel)]-vPadding-[passwordLabel(==emailLabel)]-vPadding-[mobileNumLabel(==passwordLabel)]", options:[], metrics:metrics, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-vPadding-[fnameTxtfld(32)]-vPadding-[lnameTxtfld(==fnameTxtfld)]-vPadding-[emailTxtfld(==lnameTxtfld)]-vPadding-[passwordTxtfld(==emailTxtfld)]-vPadding-[mobileNumTxtfld(==passwordTxtfld)]",options:[], metrics:metrics, views:views))
        
        return newUserInfoBox
    }
    
    //  Now create objects of all controls you wish to include in the subview container..
    
    let firstNameLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs:"First Name")
    let firstNameTxtfld: UITextField! = TextFieldBlueprint().layoutTextField()

    let lastNameLabel: UILabel! = LabelBlueprint().layoutLabel(theTextIs: "Last Name")
    let lastNameTxtfld: UITextField! = TextFieldBlueprint().layoutTextField()
    
    let emailLabel: UILabel! = LabelBlueprint().layoutLabel(theTextIs: "Email")
    let emailTxtfld: UITextField! = TextFieldBlueprint().layoutTextField()
    
    let passwordLabel: UILabel! = LabelBlueprint().layoutLabel(theTextIs: "Password")
    let passwordTxtfld: UITextField! = TextFieldBlueprint().layoutTextField()
    
    let mobileNumLabel: UILabel! = LabelBlueprint().layoutLabel(theTextIs: "Mobile No.")
    let mobileNumTxtfld: UITextField! = TextFieldBlueprint().layoutTextField()
        
    let newUserButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs:"Create New User")

    
}


