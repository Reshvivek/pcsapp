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
        aboutUsScrollView.contentSize.height = CGFloat(384.7)
        aboutUsScrollView.bounces = false
        
        staticInfoText.numberOfLines = 6
        staticInfoText.textAlignment = NSTextAlignment.center
        
        addressText.numberOfLines = 4
        addressText.textAlignment = NSTextAlignment.center
        
        
//        aboutUsScrollView.addSubview(mainImage)
//        mainImage.alpha = 1
//        NSLayoutConstraint.activate([mainImage.topAnchor.constraint(equalTo: aboutUsScrollView.topAnchor),
//                                     mainImage.widthAnchor.constraint(equalToConstant: 375),
//                                     mainImage.heightAnchor.constraint(equalToConstant: 250),
//                                     mainImage.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(patienceLogo)
        patienceLogo.alpha = 1
        NSLayoutConstraint.activate([patienceLogo.topAnchor.constraint(equalTo: aboutUsScrollView.topAnchor, constant: 16),
                                     patienceLogo.widthAnchor.constraint(equalToConstant: 90),
                                     patienceLogo.heightAnchor.constraint(equalToConstant: 90),
                                     patienceLogo.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(staticInfoText)
        NSLayoutConstraint.activate([staticInfoText.topAnchor.constraint(equalTo: patienceLogo.bottomAnchor),
                                     staticInfoText.widthAnchor.constraint(equalToConstant: 314),
                                     staticInfoText.heightAnchor.constraint(equalToConstant: 168),
                                     staticInfoText.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])
        
        aboutUsScrollView.addSubview(addressText)
        addressText.backgroundColor = appGreenColor(alphaIs: 1)
        addressText.textColor = UIColor.white
        NSLayoutConstraint.activate([addressText.topAnchor.constraint(equalTo: staticInfoText.bottomAnchor),
                                     addressText.widthAnchor.constraint(equalToConstant: 375),
                                     addressText.heightAnchor.constraint(equalToConstant: 110),
                                     addressText.centerXAnchor.constraint(equalTo: aboutUsScrollView.centerXAnchor)])

        return aboutUsScrollView
    }


    let mainImage: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "meeting")
    
    let patienceLogo: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "logo")
    
    let staticInfoText: UILabel = LabelBlueprint().layoutLabel(theTextIs: "We’re a non-profit organization and our work is funded by donations.\n\nOur environment is a friendly and social place to volunteer, gain a skill and make new friends.")
    
    let addressText: UILabel = LabelBlueprint().layoutLabel(theTextIs: "2 Salicki Avenue\n Epping, VIC 3076\n 03 8418 3088\n care@patiencecs.org.au")


}
