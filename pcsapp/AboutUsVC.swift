//
//  AboutUsVC.swift
//  pcsapp
//
//  Created by Yalla Code on 25/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class AboutUsVC: UIViewController {

    private let instanceOfAboutUsView = AboutUsView()
    
    override func loadView() {
    
        super.loadView()
        
        
        let mi = instanceOfAboutUsView.mainImage
        mi.alpha = 1
        let ausv = instanceOfAboutUsView.aboutUsScrollView
        
        view.addSubview(mi)
        view.addSubview(instanceOfAboutUsView.layoutAboutUsScrollView())
        
        NSLayoutConstraint.activate([mi.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor ),
                                     mi.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     mi.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     mi.heightAnchor.constraint(equalToConstant: 250)])

        NSLayoutConstraint.activate([ausv.topAnchor.constraint(equalTo: mi.bottomAnchor),
                                     ausv.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     ausv.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     ausv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "About Us"

    }


}
