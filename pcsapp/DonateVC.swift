//
//  DonateVC.swift
//  pcsapp
//
//  Created by Yalla Code on 17/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class DonateVC: UIViewController, UITextViewDelegate  {


    private let instanceOfDonateView = DonateView()
    
    override func loadView(){
    
        super.loadView()
        
        view.addSubview(instanceOfDonateView.layoutDonateScrollView())
        
        // func below to apply the constraints so that the scroll view takes the whole size of the screen
        applyScrollViewConstraints()
        
        instanceOfDonateView.briefDescription.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            self.tabBarController?.navigationItem.title = "Donate"
            
        }
    
    override func viewDidLayoutSubviews() {
        instanceOfDonateView.underlineTextField()
    }

    
    private func applyScrollViewConstraints() {
        
        let dsv = instanceOfDonateView.donateScrollView
        
        let constraintValuesAre = (leading: dsv.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                   trailing: dsv.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                   top: dsv.topAnchor.constraint(equalTo: self.view.topAnchor),
                                   bottom: dsv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        
        NSLayoutConstraint.activate([constraintValuesAre.leading, constraintValuesAre.trailing, constraintValuesAre.top, constraintValuesAre.bottom])
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        instanceOfDonateView.briefDescription.text = ""
        
    }
    
}
