//
//  CreateNewUserVC.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class CreateNewUserVC: UIViewController {

    private let instanceOfCreateNewUserView = CreateNewUserView()
    
        override func loadView(){
            super.loadView()
            
            self.navigationItem.title = "Create New User"
                view.addSubview(instanceOfCreateNewUserView.newUserMainImage)
                        view.addSubview(instanceOfCreateNewUserView.layoutNewUserInfoBox())
                            view.addSubview(instanceOfCreateNewUserView.newUserButton)

                            applyCreateNewUserConstraints()
            
    }
    
    override func viewDidLayoutSubviews() {
        instanceOfCreateNewUserView.underlineTextField()
    }
    
    private func applyCreateNewUserConstraints() {
        
        let views:[String:Any] = ["newUserMainImage":instanceOfCreateNewUserView.newUserMainImage,
                                  "newUserInfoBox":instanceOfCreateNewUserView.newUserInfoBox,
                                  "newUserButton":instanceOfCreateNewUserView.newUserButton
        ]
    
        //  the next line will ensure the top of the view is aligned to the bottom of the navigation bar..
        NSLayoutConstraint.activate([instanceOfCreateNewUserView.newUserMainImage.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 44)])
        
        //  now we layout UI controls using Visual Formal Language as usual..
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|-[newUserMainImage]-|", options:[], metrics:[:], views:views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|-[newUserInfoBox]-|", options:[], metrics:[:], views:views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|-60-[newUserButton]-60-|", options:[], metrics:[:], views:views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"V:[newUserMainImage(128)]-26-[newUserInfoBox(280)]-26-[newUserButton(48)]", options:[], metrics:[:], views:views))
        


    }
    
}
