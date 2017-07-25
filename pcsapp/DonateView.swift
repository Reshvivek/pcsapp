//
//  DonateView.swift
//  pcsapp
//
//  Created by Yalla Code on 16/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

struct DonateView {
    
    let donateScrollView: UIScrollView = UIScrollView()
    
        func layoutDonateScrollView() -> UIScrollView {
        
            donateScrollView.translatesAutoresizingMaskIntoConstraints = false
                //donateScrollView.backgroundColor = UIColor.orange
                    donateScrollView.contentSize.height = CGFloat(1600)

            
            //  add all required subviews to the scrollview below this comment up to 'return' statement
            
            donateScrollView.addSubview(itemDonatedImage)
            NSLayoutConstraint.activate([itemDonatedImage.topAnchor.constraint(equalTo: donateScrollView.topAnchor, constant: 10),
                                         itemDonatedImage.widthAnchor.constraint(equalToConstant: 360),
                                         itemDonatedImage.heightAnchor.constraint(equalToConstant: 240),
                                         itemDonatedImage.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
        
            donateScrollView.addSubview(briefDescription)
            NSLayoutConstraint.activate([briefDescription.topAnchor.constraint(equalTo: itemDonatedImage.bottomAnchor, constant: 10),
                                         briefDescription.widthAnchor.constraint(equalToConstant: 360),
                                         briefDescription.heightAnchor.constraint(equalToConstant: 90),
                                         briefDescription.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])

//            

            
            donateScrollView.addSubview(layoutPickDetailsBox())
            NSLayoutConstraint.activate([pickupDetailsBox.topAnchor.constraint(equalTo:briefDescription.bottomAnchor, constant: 10),
                                         pickupDetailsBox.widthAnchor.constraint(equalToConstant:360),
                                         pickupDetailsBox.heightAnchor.constraint(equalToConstant: 177),
                                         pickupDetailsBox.centerXAnchor.constraint(equalTo:donateScrollView.centerXAnchor)])
            NSLayoutConstraint.activate([pickupDetailsLabel.leadingAnchor.constraint(equalTo:pickupDetailsBox.leadingAnchor, constant: 5),
                                         pickupDetailsLabel.heightAnchor.constraint(equalToConstant: 32),
                                         pickupDetailsLabel.widthAnchor.constraint(equalToConstant: 100)])

//                donateScrollView.addSubview(layoutContactDetailsBox())
//                donateScrollView.addSubview(additionalNotesTextView)
            donateScrollView.addSubview(submitButton)
            NSLayoutConstraint.activate([submitButton.topAnchor.constraint(equalTo: pickupDetailsBox.bottomAnchor, constant: 10),
                                         submitButton.widthAnchor.constraint(equalToConstant: 240),
                                         submitButton.heightAnchor.constraint(equalToConstant: 50),
                                         submitButton.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
            
//            NSLayoutConstraint.activate([submitButton.topAnchor.constraint(equalTo: briefDescription.bottomAnchor, constant: 40),
//                                         submitButton.leadingAnchor.constraint(equalTo: donateScrollView.centerXAnchor),
//                                         submitButton.trailingAnchor.constraint(equalTo: donateScrollView.trailingAnchor),
//                                         submitButton.bottomAnchor.constraint(equalTo: donateScrollView.bottomAnchor)])
            
            return donateScrollView
        }
    
    
    //  The box below include the pickup details controls (address, date, time) surrounded by a green box
    
    let pickupDetailsBox: UIView! = UIView()
    
    func layoutPickDetailsBox() -> UIView {

        pickupDetailsBox.translatesAutoresizingMaskIntoConstraints = false
        pickupDetailsBox.backgroundColor = appGreenColor(alphaIs: 0.13)
        
        pickupDetailsBox.addSubview(pickupDetailsLabel)
        
        pickupDetailsBox.addSubview(addressLabel)
        pickupDetailsBox.addSubview(addressTextField)

        
                pickupDetailsBox.addSubview(dateLabel)
                pickupDetailsBox.addSubview(dateTextField)
                    pickupDetailsBox.addSubview(timeLabel)
                    pickupDetailsBox.addSubview(timeTextField)
        
        return pickupDetailsBox
    }
    
    
    //  The box below include the contact details controls (contact person, mobile#) surrounded by a green box
    
//    let contactDetailsBox: UIView! = UIView()
//    
//    func layoutContactDetailsBox() -> UIView {
//    
//        contactDetailsBox.frame.size = CGSize(width:itemDonatedImage.frame.width, height:150)
//        contactDetailsBox.frame.origin = CGPoint(x:0, y:500)
//        contactDetailsBox.backgroundColor = appGreenColor(alphaIs: 0.13)
//        
//        contactDetailsBox.addSubview(contactDetailsLabel)
//            contactDetailsBox.addSubview(contactPersonLabel)
//            contactDetailsBox.addSubview(contactPersonTextField)
//                contactDetailsBox.addSubview(mobileLabel)
//                contactDetailsBox.addSubview(mobileTextField)
//        
//        return contactDetailsBox
//    }


    //  Image of the donated item..
        let itemDonatedImage: UIImageView = ImageViewBlueprint().layoutImage()
    
    // Brief Description text view
        let briefDescription: UITextView = TextViewBlueprint().layoutTextView()
  
    //  Pickup Details controls
        let pickupDetailsLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Pickup Details")
    
        let addressLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Address")
        let addressTextField: UITextField = TextFieldBlueprint().layoutTextField()

        let dateLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Date")
        let dateTextField: UITextField = TextFieldBlueprint().layoutTextField()

        let timeLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "time")
        let timeTextField: UITextField = TextFieldBlueprint().layoutTextField()
    
//    //  Contact Details controls
//        let contactDetailsLabel: UILabel = LabelBluePrint().layoutLabel(theTextIs: "Contact Details")
//        
//        let contactPersonLabel: UILabel = LabelBluePrint().layoutLabel(theTextIs: "Contact Person")
//        let contactPersonTextField: UITextField = TextFieldBluePrint().layoutTextField()
//
//        let mobileLabel: UILabel = LabelBluePrint().layoutLabel(theTextIs: "Mobile#")
//        let mobileTextField: UITextField = TextFieldBluePrint().layoutTextField()
    
    //  Additional Notes controls
        let additionalNotesTextView: UITextView = TextViewBlueprint().layoutTextView()
    
    //  Submit button
        let submitButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs:"Submit")
    
//            func applySubmitButtonConstraints(){
//            
//              NSLayoutConstraint.activate([submitButton.topAnchor.constraint(equalTo: itemDonatedImage.bottomAnchor),
//                            submitButton.widthAnchor.constraint(equalToConstant: 360),
//                            submitButton.heightAnchor.constraint(equalToConstant: 34),
//                            submitButton.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
//                
////                let asbc = (submitButton.topAnchor.constraint(equalTo: itemDonatedImage.bottomAnchor),
////                                             submitButton.widthAnchor.constraint(equalToConstant: 360),
////                                             submitButton.heightAnchor.constraint(equalToConstant: 240),
////                                             submitButton.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor))
//                //let asbcArray: [NSLayoutConstraint] = [asbc.0, asbc.1, asbc.2, asbc.3]
//                //NSLayoutConstraint.activate([asbc.0, asbc.1, asbc.2, asbc.3])
//                
//            }
    

}
