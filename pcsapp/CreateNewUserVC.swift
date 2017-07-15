//
//  CreateNewUserVC.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class CreateNewUserVC: UIViewController{

    private let instanceOfCreateNewUserView = CreateNewUserView()
    
    
        override func loadView(){
        
            super.loadView()
            
            view.addSubview(instanceOfCreateNewUserView.createNewUserVuLayout())
            
            instanceOfCreateNewUserView.centerTheVu(superVuX: view.center.x)
            
            instanceOfCreateNewUserView.center.y = view.center.y
            
            
        }


}
