//
//  AboutUsVC.swift
//  pcsapp
//
//  Created by Yalla Code on 25/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class AboutUsVC: UINavigationController {

    private let instanceOfAboutUsView: AboutUsView = AboutUsView()
    
    override func loadView() {
    
        super.loadView()
        
        let ausv = instanceOfAboutUsView.aboutUsScrollView
        
        view.addSubview(instanceOfAboutUsView.layoutAboutUsScrollView())
        
        NSLayoutConstraint.activate([ausv.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor),
                                     ausv.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     ausv.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     ausv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
    }


}
