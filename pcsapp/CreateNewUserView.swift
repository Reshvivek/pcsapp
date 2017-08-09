//
//  CreateNewUserView.swift
//  pcsapp
//

import UIKit

struct CreateNewUserView {
    
    let newUserInfoBox: UIView = UIView()
    
    func layoutNewUserInfoBox() -> UIView {
        
        let views:[String:Any] = ["fnameLabel": firstNameLabel,
                                  "fnameTxtfld": firstNameTxtfld,
                                  "lnameLabel": lastNameLabel,
                                  "lnameTxtfld": lastNameTxtfld,
                                  "emailLabel": emailLabel,
                                  "emailTxtfld": emailTxtfld,
                                  "passwordLabel": passwordLabel,
                                  "passwordTxtfld": passwordTxtfld,
                                  "mobileNumLabel": mobileNumLabel,
                                  "mobileNumTxtfld": mobileNumTxtfld,
                                  "newUserButton": newUserButton
                                  ]
        let metrics:[String:Any] = ["vPadding": 120/6]
        
        newUserInfoBox.translatesAutoresizingMaskIntoConstraints = false
        newUserInfoBox.backgroundColor = appGreenColor(alphaIs: 0.3)
        
                newUserInfoBox.addSubview(firstNameLabel)
                newUserInfoBox.addSubview(firstNameTxtfld)
        
                newUserInfoBox.addSubview(lastNameLabel)
                newUserInfoBox.addSubview(lastNameTxtfld)
        
                newUserInfoBox.addSubview(emailLabel)
                newUserInfoBox.addSubview(emailTxtfld)
        
                newUserInfoBox.addSubview(passwordLabel)
                newUserInfoBox.addSubview(passwordTxtfld)
                    passwordTxtfld.isSecureTextEntry = true
        
                newUserInfoBox.addSubview(mobileNumLabel)
                newUserInfoBox.addSubview(mobileNumTxtfld)
        
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[fnameLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[fnameLabel]-[fnameTxtfld]-30-|", options: [], metrics: [:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[lnameLabel(==fnameLabel)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[lnameLabel]-[lnameTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[emailLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[emailLabel]-[emailTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[passwordLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[passwordLabel]-[passwordTxtfld]-30-|", options: [], metrics: [:], views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[mobileNumLabel(80)]", options:[], metrics:[:], views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[mobileNumLabel]-[mobileNumTxtfld]-30-|", options: [], metrics: [:], views: views))

        
        //  align the labels vertically..
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-vPadding-[fnameLabel(32)]-vPadding-[lnameLabel(==fnameLabel)]-vPadding-[emailLabel(==fnameLabel)]-vPadding-[passwordLabel(==emailLabel)]-vPadding-[mobileNumLabel(==passwordLabel)]", options:[], metrics:metrics, views: views))
        
        // now align textfields vertically..
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-vPadding-[fnameTxtfld(32)]-vPadding-[lnameTxtfld(==fnameTxtfld)]-vPadding-[emailTxtfld(==lnameTxtfld)]-vPadding-[passwordTxtfld(==emailTxtfld)]-vPadding-[mobileNumTxtfld(==passwordTxtfld)]", options:[], metrics:metrics, views: views))
        
        return newUserInfoBox
    }
    
    //  Now create objects of all controls you wish to include in the subview container..
    
    let newUserMainImage: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs:"user")
    
    let firstNameLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs:"First Name")
    let firstNameTxtfld: UITextField = TextFieldBlueprint().layoutTextField()

    let lastNameLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Last Name")
    let lastNameTxtfld: UITextField = TextFieldBlueprint().layoutTextField()
    
    let emailLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Email")
    let emailTxtfld: UITextField = TextFieldBlueprint().layoutTextField()
    
    let passwordLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Password")
    let passwordTxtfld: UITextField = TextFieldBlueprint().layoutTextField()
    
    let mobileNumLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Mobile No.")
    let mobileNumTxtfld: UITextField = TextFieldBlueprint().layoutTextField()
        
    let newUserButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs:"Create New User")
    
    // the function below will cycle through all textfields in the current view, and implement the bottom-border style textfield
    func underlineTextField(){
        
        let textFieldsInView:[UITextField] = [firstNameTxtfld,lastNameTxtfld,emailTxtfld,passwordTxtfld,mobileNumTxtfld]
        
        for txtFld in textFieldsInView {
            
            let aLayer:CALayer = CALayer()
            aLayer.frame = CGRect(x:0, y:txtFld.frame.height - 1.0, width:txtFld.frame.width, height:1)
            aLayer.borderWidth = 1.0
            aLayer.borderColor = appGreenColor(alphaIs: 1).cgColor
            txtFld.layer.masksToBounds = true
            txtFld.layer.addSublayer(aLayer)    // tadaaaaa
            
        }
        
    }

    
}


