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
            
            view.addSubview(instanceOfCreateNewUserView.layoutScrollView())
//            instanceOfCreateNewUserView.newUserInfoBox.isHidden = true
    }
        
}
