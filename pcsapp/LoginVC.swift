//
//  LoginVC.swift
//  pcsapp
//
//  Created by Yalla Code on 10/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class LoginVC: UIViewController{
    
    
    private let instanceOfLoginVu = LoginView().loginVuProperties()
    
    override func loadView() {
        super.loadView()
        
        instanceOfLoginVu.frame = CGRect(x:0, y:view.bounds.minY+22, width:view.bounds.width, height:view.bounds.height)
        
            view.addSubview(instanceOfLoginVu)
    }
 



}
