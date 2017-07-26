//
//  CreateNewUserView.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct CreateNewUserView{
    
    var someScrollView: UIScrollView! = UIScrollView()
    
    func layoutScrollView() -> UIScrollView {
    
        someScrollView.frame.size = CGSize(width:330, height:800)
        someScrollView.frame.origin = CGPoint(x:0, y:20)
        someScrollView.backgroundColor = UIColor.clear
        someScrollView.contentSize = CGSize(width:300, height:1800)
        someScrollView.addSubview(layoutNewUserInfoBox())
        return someScrollView
    }

    
    let newUserInfoBox: UIView! = UIView()   // <-- the container subview surrounding controls, and is a subview of the scrollview above
    
    func layoutNewUserInfoBox() -> UIView{
        
        // Fristly, construct the container (subview) before including control in it..
        newUserInfoBox.frame.size =  CGSize(width:320, height:400)
        newUserInfoBox.frame.origin = CGPoint(x:0, y:20)
        newUserInfoBox.backgroundColor = appGreenColor(alphaIs: 0.15)
        
        //  Add controls in order of appearance inside the containing subview using objects below (labels, textflds, buttons, etc..)
        
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
        
        newUserInfoBox.addSubview(NewUserButton)
        
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
        
    let NewUserButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs:"Create New User")

    
}


