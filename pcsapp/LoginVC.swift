//
//  LoginVC.swift
//  pcsapp
//
//  Created by Yalla Code on 10/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    private let instanceOfLoginView = LoginView()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(instanceOfLoginView.layoutLoginView())
        
        applyLoginVCConstraints()
        
        instanceOfLoginView.createUserButton.addTarget(self, action: #selector(goToCreateNewUser), for: UIControlEvents.touchUpInside)
        instanceOfLoginView.loginButton.addTarget(self, action: #selector(goToDonate), for: UIControlEvents.touchUpInside)

        instanceOfLoginView.donateGuestButton.addTarget(self, action: #selector(donateAsGuest), for: UIControlEvents.touchUpInside)

   
    }
    
    func applyLoginVCConstraints() {
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[loginView]|", options: [], metrics: [:], views: ["loginView":instanceOfLoginView.loginView]))
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[loginView]-|", options: [], metrics: [:], views: ["loginView":instanceOfLoginView.loginView]))
            
        }
    
    func goToCreateNewUser() {
    
        self.present(CreateNewUserVC(), animated: false, completion: nil)

    }
    
    func goToDonate() {
        
        if instanceOfLoginView.usernameTextField.text == "gamal" && instanceOfLoginView.passwordTextField.text == "gamal" {
        
        self.present(TabBarVC(), animated: false, completion: nil)
            
        } else {
            
            print("username or password incorrect")
        }
    }
    
    func donateAsGuest() {
    
        self.present(TabBarVC(), animated: false, completion: nil)
    }


}

