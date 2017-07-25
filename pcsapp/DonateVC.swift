//
//  DonateVC.swift
//  pcsapp
//
//  Created by Yalla Code on 17/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class DonateVC: UINavigationController {


    private let instanceOfDonateView = DonateView()
    
    override func loadView(){
    
        super.loadView()
        
            view.addSubview(instanceOfDonateView.layoutDonateScrollView())
                applyScrollViewConstraints()    // will apply the constraints so that the scroll view takes the whole size of the screen

        
    }

    
    func applyScrollViewConstraints() {
    
        let dsv = instanceOfDonateView.donateScrollView
        
        let constraintValuesAre = (leading: dsv.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                   trailing: dsv.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                   top: dsv.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor),
                                   bottom: dsv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        
        NSLayoutConstraint.activate([constraintValuesAre.leading, constraintValuesAre.trailing, constraintValuesAre.top, constraintValuesAre.bottom])
    }
    
}
