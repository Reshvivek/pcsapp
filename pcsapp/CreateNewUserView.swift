//
//  CreateNewUserView.swift
//  pcsapp
//
//  Created by Yalla Code on 15/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class CreateNewUserView: UIView{
    
    private let subVu: UIView! = UIView()

        func createNewUserVuLayout() -> UIView{
            
        // Fristly, construct the container (subview) before including control in it..
            subVu.frame.size =  CGSize(width:320, height:320)
            subVu.backgroundColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.15)
            
        //  Now create objects of all controls you wish to include in the subview container.. (check the structs at the end of this .swift file)
            
            let firstNameLabel: CreateNewUserLabels! = CreateNewUserLabels(theFrameIs: CGRect(x:0, y:0, width:100, height:32), theTextIs: "First Name")
            let firstNameTxtfld: CreateNewUserTextFields! = CreateNewUserTextFields(theFrameIs:CGRect(x:102, y:0, width:200, height:32))
            
            let lastNameLabel: CreateNewUserLabels! = CreateNewUserLabels(theFrameIs: CGRect(x:0, y:40, width:100, height:32), theTextIs: "Last name")
            let lastNameTxtfld: CreateNewUserTextFields! = CreateNewUserTextFields(theFrameIs:CGRect(x:102, y:40, width:200, height:32))

            let emailLabel: CreateNewUserLabels! = CreateNewUserLabels(theFrameIs: CGRect(x:0, y:80, width:100, height:32), theTextIs: "Email")
            let emailTxtfld: CreateNewUserTextFields! = CreateNewUserTextFields(theFrameIs:CGRect(x:102, y:80, width:200, height:32))

            let passwordLabel: CreateNewUserLabels! = CreateNewUserLabels(theFrameIs: CGRect(x:0, y:120, width:100, height:32), theTextIs: "Password")
            let passwordTxtfld: CreateNewUserTextFields! = CreateNewUserTextFields(theFrameIs:CGRect(x:102, y:120, width:200, height:32))
            passwordTxtfld.isSecureText()

            let mobileNumLabel: CreateNewUserLabels! = CreateNewUserLabels(theFrameIs: CGRect(x:0, y:160, width:100, height:32), theTextIs: "Mobile No.")
            let mobileNumTxtfld: CreateNewUserTextFields! = CreateNewUserTextFields(theFrameIs:CGRect(x:102, y:160, width:200, height:32))

            
            let createNewUserButton: CreateNewUserButtons! = CreateNewUserButtons()

            
        //  Add controls in order of appearance inside the containing subview using objects above (labels, textflds, buttons, etc..)
            
            subVu.addSubview(firstNameLabel.layoutLabel())
            subVu.addSubview(firstNameTxtfld.layoutTextfield())
                subVu.addSubview(lastNameLabel.layoutLabel())
                subVu.addSubview(lastNameTxtfld.layoutTextfield())
                    subVu.addSubview(emailLabel.layoutLabel())
                    subVu.addSubview(emailTxtfld.layoutTextfield())
                        subVu.addSubview(passwordLabel.layoutLabel())
                        subVu.addSubview(passwordTxtfld.layoutTextfield())
                            subVu.addSubview(mobileNumLabel.layoutLabel())
                            subVu.addSubview(mobileNumTxtfld.layoutTextfield())
            
            subVu.addSubview(createNewUserButton.layoutButton())
            
            return subVu
       
        }
        
        func centerTheVu(superVuX:CGFloat){
        
            subVu.center.x = superVuX
        }

    
    
    //// the structs below are used to build the controls on the view programmatically
    
    struct CreateNewUserLabels{     //  use this struct to build LABEL objects in your view
    
        let theFrameIs:CGRect!
        let theTextIs: String!
        
            func layoutLabel() -> UILabel{
                let aLabel = UILabel()
                
                aLabel.frame = theFrameIs
                aLabel.text = theTextIs
                aLabel.textColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:1)
                
                return aLabel
            
            }
        
    }
    
    
    struct CreateNewUserTextFields{     //  use this struct to build TEXTFIELD objects in your view
    
        private let aTxtfld: UITextField! = UITextField()
        let theFrameIs: CGRect!

            func layoutTextfield() -> UITextField{
            
                aTxtfld.frame = theFrameIs
                aTxtfld.backgroundColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.13)
                aTxtfld.textColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:1)
                
                return aTxtfld
            }
            
            func isSecureText(){    //  call this func only for password fields objects
            
                aTxtfld.isSecureTextEntry = true
            }
        
    }

    
    struct CreateNewUserButtons {    //  use this struct to build BUTTON objects in your view

            func layoutButton() -> UIButton{
                
                let aButton: UIButton! = UIButton()

                aButton.frame = CGRect(x:0,y:265,width:200,height:34)
                aButton.backgroundColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:1)
                aButton.setTitle("Create New User", for: UIControlState.normal)
                
                return aButton
            }
        
    }

}


