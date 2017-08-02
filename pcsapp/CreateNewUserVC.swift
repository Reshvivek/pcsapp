//
//  CreateNewUserVC.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class CreateNewUserVC: UIViewController, UIScrollViewDelegate{

    private let instanceOfCreateNewUserView = CreateNewUserView()
    
        override func loadView(){
        
            super.loadView()
            
            view.addSubview(instanceOfCreateNewUserView.layoutNewUserInfoBox())
            view.addSubview(instanceOfCreateNewUserView.newUserButton)
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[newUserInfoBox]-|", options:[], metrics:[:], views: ["newUserInfoBox":instanceOfCreateNewUserView.newUserInfoBox]))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-260-[newUserInfoBox(280)]", options:[], metrics:[:], views: ["newUserInfoBox":instanceOfCreateNewUserView.newUserInfoBox]))
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-60-[newUserButton]-60-|", options:[], metrics:[:], views: ["newUserButton":instanceOfCreateNewUserView.newUserButton]))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:[newUserInfoBox]-24-[newUserButton(48)]", options:[], metrics:[:], views: ["newUserButton":instanceOfCreateNewUserView.newUserButton, "newUserInfoBox":instanceOfCreateNewUserView.newUserInfoBox]))
            
            
    }
        
}
