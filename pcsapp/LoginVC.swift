//
//  LoginVC.swift
//  pcsapp
//

import UIKit

class LoginVC: UIViewController {
    
    
    private let instanceOfLoginView = LoginView()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(instanceOfLoginView.backgroundImage)
        instanceOfLoginView.backgroundImage.alpha = 0.1
        
        view.addSubview(instanceOfLoginView.layoutLoginView())
        applyLoginVCConstraints()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        
        instanceOfLoginView.createUserButton.addTarget(self, action: #selector(goToCreateNewUser), for: UIControlEvents.touchUpInside)
            instanceOfLoginView.loginButton.addTarget(self, action: #selector(goToDonate), for: UIControlEvents.touchUpInside)
                instanceOfLoginView.donateGuestButton.addTarget(self, action: #selector(donateAsGuest), for: UIControlEvents.touchUpInside)
   
    }
    
    
//  show the navigation bar as soon as we move to another view

    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = false

    }
    
// hide the navigation bar again when we come back to THIS view from another view

    override func viewWillAppear(_ animated: Bool) {

        self.navigationController?.navigationBar.isHidden = true
        
        instanceOfLoginView.backgroundImage.becomeFirstResponder()
        instanceOfLoginView.usernameTextField.text = ""
        instanceOfLoginView.usernameTextField.attributedPlaceholder = NSAttributedString(string: "U s e r n a m e", attributes: [NSForegroundColorAttributeName : appGreenColor(alphaIs: 0.66)])
        
        instanceOfLoginView.passwordTextField.text = ""
        instanceOfLoginView.passwordTextField.attributedPlaceholder = NSAttributedString(string: "P a s s w o r d", attributes: [NSForegroundColorAttributeName : appGreenColor(alphaIs: 0.66)])
    
    }

//  call the func to apply bottom-border textfield
    
    override func viewDidLayoutSubviews() {
        
        instanceOfLoginView.underlineTextField()

    }
    
    
//MARK:- loadView Functions
    
        func applyLoginVCConstraints() {
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:[bgImage(100)]", options: [], metrics: [:], views: ["bgImage":instanceOfLoginView.backgroundImage]))
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-33-[bgImage(100)]", options: [], metrics: [:], views: ["bgImage":instanceOfLoginView.backgroundImage, "loginView":instanceOfLoginView.loginView]))
            
            NSLayoutConstraint.activate([instanceOfLoginView.backgroundImage.centerXAnchor.constraint(equalTo:self.view.centerXAnchor)])
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[loginView]|", options: [], metrics: [:], views: ["loginView":instanceOfLoginView.loginView]))
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[loginView]-|", options: [], metrics: [:], views: ["loginView":instanceOfLoginView.loginView]))
            
        }
        
        func goToCreateNewUser() {
            
            self.navigationController?.pushViewController(CreateNewUserVC(), animated: false)
        }
        
        func goToDonate() {
            
            if instanceOfLoginView.usernameTextField.text != "Gamal" || instanceOfLoginView.passwordTextField.text != "gamal" {
                instanceOfLoginView.usernameTextField.text = ""
                instanceOfLoginView.passwordTextField.text = ""
                instanceOfLoginView.usernameTextField.attributedPlaceholder = NSAttributedString(string:"Invalid username or password. Try again.", attributes: [NSForegroundColorAttributeName: UIColor.red])
                
            } else {
                
                self.navigationController?.pushViewController(TabBarVC(), animated: false)

                
            }
        }
        
        func donateAsGuest() {
            
            self.navigationController?.pushViewController(TabBarVC(), animated: false)
        }

}

