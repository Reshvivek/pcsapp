//
//  Commons.swift
//  pcsapp
//
//  Created by Yalla Code on 16/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

func appGreenColor(alphaIs: CGFloat) -> UIColor {    // call this func to set any control color to PatienceCS green color, pass only desired alpha value

    return UIColor(red:32/255, green:127/255, blue:113/255, alpha: alphaIs)
    
}


func appCustomFont() -> UIFont {    //  call this func to set the font for all controls that has involves font property in the app

    return UIFont(name: "Avenir-Book", size: 16)!
    
}


////////////////////////////////////////////////////////////////////////////////////////////////////

//  use blueprints below to implement all controls in your app (textfields, labels, buttons, etc..)

////////////////////////////////////////////////////////////////////////////////////////////////////

struct LabelBlueprint {
    
    private let aLabel:UILabel! = UILabel()
    
    func layoutLabel(theTextIs: String) -> UILabel {

        aLabel.translatesAutoresizingMaskIntoConstraints = false
        
        aLabel.text = theTextIs
        aLabel.font = appCustomFont()
        aLabel.textAlignment = NSTextAlignment.right
        aLabel.textColor = appGreenColor(alphaIs: 1)
        
        return aLabel
    }
    
}


struct TextFieldBlueprint {
    
    private let aTxtFld:UITextField! = UITextField()
    
    func layoutTextField() -> UITextField {
        
        aTxtFld.translatesAutoresizingMaskIntoConstraints = false
        
        aTxtFld.backgroundColor = appGreenColor(alphaIs:0.13)
        aTxtFld.textColor = appGreenColor(alphaIs: 1)
        aTxtFld.font = appCustomFont()

        return aTxtFld

    }
}


struct TextViewBlueprint {
    
    private let aTxtVu: UITextView! = UITextView()

    func layoutTextView() -> UITextView {
    
            aTxtVu.translatesAutoresizingMaskIntoConstraints = false
        
            aTxtVu.backgroundColor = appGreenColor(alphaIs: 0.25)
            aTxtVu.textColor = UIColor.white
            aTxtVu.font = appCustomFont()
        
        return aTxtVu
    }
}


struct ButtonBlueprint {    //  use this struct to build BUTTON objects in your view
    
    private let aButton: UIButton! = UIButton()

    func layoutButton(theTitleIs: String) -> UIButton{
        
        aButton.translatesAutoresizingMaskIntoConstraints = false
        
        aButton.backgroundColor = appGreenColor(alphaIs: 1)
        aButton.setTitle(theTitleIs, for: UIControlState.normal)
        
        return aButton
    }
    
}


struct ImageViewBlueprint {
    
    func layoutImage(imageNameIs: String) -> UIImageView {
        
        let anImage: UIImageView! = UIImageView()
        
            anImage.translatesAutoresizingMaskIntoConstraints = false
        
            anImage.image = UIImage(imageLiteralResourceName: imageNameIs)
            anImage.backgroundColor = appGreenColor(alphaIs: 0.13)
            anImage.contentMode = UIViewContentMode.scaleAspectFit

        
        return anImage
        
    }
}
