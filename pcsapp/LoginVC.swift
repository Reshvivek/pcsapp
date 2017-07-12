//
//  LoginVC.swift
//  pcsapp
//
//  Created by Yalla Code on 10/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class LoginVC: UIViewController{
    

    private let instanceOfLoginVu = LoginView()
    
    override func loadView() {
        super.loadView()
        
        
        instanceOfLoginVu.loginVu.frame = CGRect(x:0, y:super.view.bounds.minY+20, width:view.bounds.width, height:view.bounds.height)
        
            view.addSubview(instanceOfLoginVu.loginVuProperties())
    }
 



}
