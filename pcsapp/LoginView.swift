//
//  LoginView.swift
//  pcsapp
//
//  Created by Yalla Code on 10/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct LoginView{
    
    
    let loginVu: UIView = UIView()
    
        func loginVuProperties() -> UIView{
            
            //loginVu.backgroundColor = UIColor.orange
            
            loginVu.addSubview(usernameTextFieldProperties())
            
                loginVu.addSubview(passwordTextFieldProperties())
            
            loginVu.addSubview(loginButtonProperties(theFrameIs: CGRect(x:loginVu.bounds.minX, y:80, width:200 , height:36), theBgColorIs: UIColor(red:31/255, green:127/255, blue:113/255, alpha:1) , bttnTitleIs: "Log In"))
            
            loginVu.addSubview(forgotPasswordButtonProperties(theFrameIs:CGRect(x:0, y:120, width:200, height:36), theBgColorIs:UIColor.clear, bttnTitleIs: "Forgot Password?"))
            
            loginVu.addSubview(createUserButtonProperties(theFrameIs:CGRect(x:0, y:150, width:200, height:36), theBgColorIs:UIColor.clear, bttnTitleIs: "Create New User"))
            
            loginVu.addSubview(donateGuestButtonProperties(theFrameIs: CGRect(x:(loginVu.bounds.minX) , y:200, width:200 , height:36), theBgColorIs: UIColor(red:31/255, green:127/255, blue:113/255, alpha:1) , bttnTitleIs: "Donate As Guest"))

      
            return loginVu
        }
    

//  username textfield

    let usernameTextField: UITextField = UITextField(frame:CGRect(x:20, y:0, width:150, height:32))
    
        func usernameTextFieldProperties() -> UITextField{
            
            usernameTextField.textColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:1)
            
            usernameTextField.attributedPlaceholder = NSAttributedString(string: "u s e r n a m e", attributes:[NSForegroundColorAttributeName: UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.7)])
            
            return usernameTextField
        }
    
//  password textfield
    
    let passwordTextField: UITextField = UITextField(frame:CGRect(x:20, y:40, width:150,height:32))
    
        func passwordTextFieldProperties() -> UITextField{
            
        
            passwordTextField.attributedPlaceholder = NSAttributedString(string: "p a s s w o r d", attributes:[NSForegroundColorAttributeName:UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.7)])
            
            passwordTextField.isSecureTextEntry = true
            passwordTextField.textColor = UIColor(red:31/255, green:127/255, blue:113/255, alpha:1)

            return passwordTextField
        }
    
//  login button
    
    let loginButton: UIButton = UIButton()
    
    func loginButtonProperties(theFrameIs: CGRect, theBgColorIs: UIColor, bttnTitleIs: String) -> UIButton{
        
        loginButton.frame = theFrameIs
        loginButton.backgroundColor = theBgColorIs
        loginButton.setTitle(bttnTitleIs, for: UIControlState.normal)
        loginButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        return loginButton
    }
    
// forgot password option button
    
    let forgotPasswordButton: UIButton = UIButton()
    
    func forgotPasswordButtonProperties(theFrameIs:CGRect, theBgColorIs: UIColor, bttnTitleIs: String) -> UIButton{
        
        forgotPasswordButton.frame = theFrameIs
        forgotPasswordButton.backgroundColor = theBgColorIs
        forgotPasswordButton.setTitle(bttnTitleIs, for: UIControlState.normal)
        forgotPasswordButton.setTitleColor(UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.7), for: UIControlState.normal)
    
        return forgotPasswordButton
    }
    
// create user option button
    
    let createUserButton: UIButton = UIButton()
    
    func createUserButtonProperties(theFrameIs:CGRect, theBgColorIs: UIColor, bttnTitleIs: String) -> UIButton{
        
        createUserButton.frame = theFrameIs
        createUserButton.backgroundColor = theBgColorIs
        createUserButton.setTitle(bttnTitleIs, for: UIControlState.normal)
        createUserButton.setTitleColor(UIColor(red:31/255, green:127/255, blue:113/255, alpha:0.7), for: UIControlState.normal)
        
        return createUserButton
    }
    
// donate as guest button
    
    let donateGuestButton: UIButton = UIButton()
    
    func donateGuestButtonProperties(theFrameIs: CGRect, theBgColorIs: UIColor, bttnTitleIs: String) -> UIButton{
        
        donateGuestButton.frame = theFrameIs
        donateGuestButton.backgroundColor = theBgColorIs
        donateGuestButton.setTitle(bttnTitleIs, for: UIControlState.normal)
        donateGuestButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        return donateGuestButton
    }

 
}
