//
//  LoginView.swift
//  pcsapp
//
//  Created by Yalla Code on 10/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct LoginView {
    
    
    let loginView: UIView = UIView()
    
        func layoutLoginView() -> UIView {
            
            let views:[String:Any] = ["username": usernameTextField,
                                      "password": passwordTextField,
                                      "login": loginButton,
                                      "forgotPassword": forgotPasswordButton,
                                      "createUser": createUserButton,
                                      "donateGuest": donateGuestButton
                                      ]
            
            loginView.translatesAutoresizingMaskIntoConstraints = false
            loginView.addSubview(usernameTextField)
            
            loginView.addSubview(passwordTextField)
            passwordTextField.isSecureTextEntry = true
            
            loginView.addSubview(loginButton)
            
            loginView.addSubview(forgotPasswordButton)
            forgotPasswordButton.backgroundColor = UIColor.clear
            forgotPasswordButton.setTitleColor(appGreenColor(alphaIs: 1), for: UIControlState.normal)            
            
            loginView.addSubview(createUserButton)
            createUserButton.backgroundColor = UIColor.clear
            createUserButton.setTitleColor(appGreenColor(alphaIs: 1), for: UIControlState.normal)
            
            loginView.addSubview(donateGuestButton)
            
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[username]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[password]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[login]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[forgotPassword]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[createUser]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-25-[donateGuest]-25-|", options: [], metrics: [:], views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-155-[username(40)]-12-[password(==username)]-20-[login(48)]-30-[forgotPassword(==username)]-30-[createUser(==username)]-78-[donateGuest(48)]", options: [], metrics: [:], views: views))

            return loginView
        }


    //  background image
        let backgroundImage:UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "logo")
    
    //  username textfield
        let usernameTextField: UITextField = TextFieldBlueprint().layoutTextField()
    
    //  password textfield
        let passwordTextField: UITextField = TextFieldBlueprint().layoutTextField()
        
    //  login button
        let loginButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs: "Login")
        
    // forgot password option button
        let forgotPasswordButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs: "Forgot Password?")

    // create user option button
        let createUserButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs: "Create New User")

    // donate as guest button
        let donateGuestButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs: "Donate As Guest")
    
    
    // the function below will cycle through all textfields in the current view, and implement the bottom-border style textfield
    func underlineTextField(){
        
        let textFieldsInView:[UITextField] = [usernameTextField, passwordTextField]
        
        for txtFld in textFieldsInView {
            
            let aLayer:CALayer = CALayer()
            aLayer.frame = CGRect(x:0, y:txtFld.frame.height - 1.0, width:txtFld.frame.width, height:1)
            aLayer.borderWidth = 1.0
            aLayer.borderColor = appGreenColor(alphaIs: 1).cgColor
            txtFld.layer.masksToBounds = true
            txtFld.layer.addSublayer(aLayer)    // tadaaaaa
            
        }
        
    }

 
}
