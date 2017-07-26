//
//  AboutUs.swift
//  pcsapp
//
//  Created by Yalla Code on 25/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct AboutUsView {
    
    let aboutUsScrollView: UIScrollView = UIScrollView()
    
    func layoutAboutUsScrollView() -> UIScrollView {
    
        aboutUsScrollView.translatesAutoresizingMaskIntoConstraints = false
        aboutUsScrollView.contentSize.height = CGFloat(999)
        aboutUsScrollView.bounces = false
        
        aboutUsScrollView.addSubview(mainImage)
        NSLayoutConstraint.activate([mainImage.topAnchor.constraint(equalTo: aboutUsScrollView.topAnchor),
                                     mainImage.widthAnchor.constraint(equalToConstant: 375),
                                     mainImage.heightAnchor.constraint(equalToConstant: 250),
                                     mainImage.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(patienceLogo)
        NSLayoutConstraint.activate([patienceLogo.topAnchor.constraint(equalTo: mainImage.bottomAnchor),
                                     patienceLogo.widthAnchor.constraint(equalToConstant: 90),
                                     patienceLogo.heightAnchor.constraint(equalToConstant: 90),
                                     patienceLogo.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(staticInfoText)
        NSLayoutConstraint.activate([staticInfoText.topAnchor.constraint(equalTo: patienceLogo.bottomAnchor),
                                     staticInfoText.widthAnchor.constraint(equalToConstant: 314),
                                     staticInfoText.heightAnchor.constraint(equalToConstant: 140),
                                     staticInfoText.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(addressText)
        addressText.backgroundColor = appGreenColor(alphaIs: 0.5)
        addressText.textColor = UIColor.white
        NSLayoutConstraint.activate([addressText.topAnchor.constraint(equalTo: staticInfoText.bottomAnchor),
                                     addressText.widthAnchor.constraint(equalToConstant: 375),
                                     addressText.heightAnchor.constraint(equalToConstant: 300),
                                     addressText.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])

        return aboutUsScrollView
    }


    let mainImage: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "meeting")
    
    let patienceLogo: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "user")
    
    let staticInfoText: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Info Text here")
    
    let addressText: UILabel = LabelBlueprint().layoutLabel(theTextIs: "enter address here")


}
