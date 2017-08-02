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
            usernameTextField.backgroundColor = appGreenColor(alphaIs: 0.13)
            usernameTextField.placeholder = "U s e r n a m e"
            
            loginView.addSubview(passwordTextField)
            passwordTextField.placeholder = "P a s s w o r d"
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
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-155-[username(33)]-22-[password(==username)]-30-[login(48)]-30-[forgotPassword(==username)]-30-[createUser(==username)]-78-[donateGuest(48)]", options: [], metrics: [:], views: views))

            return loginView
        }
    

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

 
}
