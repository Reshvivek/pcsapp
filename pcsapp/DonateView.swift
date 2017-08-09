//
//  DonateView.swift
//  pcsapp
//
//  Created by Yalla Code on 16/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class DonateView {
    
    let donateScrollView: UIScrollView = UIScrollView()
    
        func layoutDonateScrollView() -> UIScrollView {
        
            donateScrollView.translatesAutoresizingMaskIntoConstraints = false
            donateScrollView.bounces = false
            donateScrollView.contentSize.height = CGFloat(895)
            
        //  add all required subviews to the scrollview below this comment up to 'return' statement
            
            // starting with the image view of the donated item -user will use camera-
            donateScrollView.addSubview(itemDonatedImage)
            itemDonatedImage.alpha = 1
            itemDonatedImage.backgroundColor = appGreenColor(alphaIs: 1)
                NSLayoutConstraint.activate([itemDonatedImage.topAnchor.constraint(equalTo: donateScrollView.topAnchor, constant: 10),
                                             itemDonatedImage.widthAnchor.constraint(equalToConstant: 360),
                                             itemDonatedImage.heightAnchor.constraint(equalToConstant: 240),
                                             itemDonatedImage.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
        
            // add the 'Brief Description' box, apply its constraints
            donateScrollView.addSubview(briefDescription)
            briefDescription.text = "Tap to add a brief description"
                NSLayoutConstraint.activate([briefDescription.topAnchor.constraint(equalTo: itemDonatedImage.bottomAnchor, constant: 10),
                                             briefDescription.widthAnchor.constraint(equalToConstant: 360),
                                             briefDescription.heightAnchor.constraint(equalToConstant: 90),
                                             briefDescription.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
 
            // add the 'Pickup Details' box, apply its constraints, call the func that applies constraints for sub UI controls
            donateScrollView.addSubview(layoutPickDetailsBox())
                NSLayoutConstraint.activate([pickupDetailsBox.topAnchor.constraint(equalTo:briefDescription.bottomAnchor, constant: 10),
                                             pickupDetailsBox.widthAnchor.constraint(equalToConstant:360),
                                             pickupDetailsBox.heightAnchor.constraint(equalToConstant: 177),
                                             pickupDetailsBox.centerXAnchor.constraint(equalTo:donateScrollView.centerXAnchor)])
                applyPickupDetailsConstraints()
            

            // add the 'Contact Details' box, apply its constraints, call the func that applies constraints for sub UI controls
            donateScrollView.addSubview(layoutContactDetailsBox())
                NSLayoutConstraint.activate([contactDetailsBox.topAnchor.constraint(equalTo: pickupDetailsBox.bottomAnchor, constant: 10),
                                             contactDetailsBox.widthAnchor.constraint(equalToConstant: 360),
                                             contactDetailsBox.heightAnchor.constraint(equalToConstant: 177),
                                             contactDetailsBox.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
                applyContactDetailsConstraints()
            
            // add the 'addtional notes' textview, apply its constraints
            donateScrollView.addSubview(additionalNotesTextView)
            additionalNotesTextView.text = "Additional Notes (e.g. notes for pickup)"
                NSLayoutConstraint.activate([additionalNotesTextView.topAnchor.constraint(equalTo: contactDetailsBox.bottomAnchor, constant: 10),
                                             additionalNotesTextView.widthAnchor.constraint(equalToConstant: 360),
                                             additionalNotesTextView.heightAnchor.constraint(equalToConstant: 90),
                                             additionalNotesTextView.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
            
            // add the 'submit' button, apply its constraints
            donateScrollView.addSubview(submitButton)
                NSLayoutConstraint.activate([submitButton.topAnchor.constraint(equalTo: additionalNotesTextView.bottomAnchor, constant: 10),
                                             submitButton.widthAnchor.constraint(equalToConstant: 240),
                                             submitButton.heightAnchor.constraint(equalToConstant: 50),
                                             submitButton.centerXAnchor.constraint(equalTo: donateScrollView.centerXAnchor)])
            
            //  return the whole scroll view will all subviews with their constraints applied
            return donateScrollView
        }
    
    
    //  The box below include the pickup details controls (address, date, time) surrounded by a green box
    
    let pickupDetailsBox: UIView! = UIView()
    
        private func layoutPickDetailsBox() -> UIView {

            pickupDetailsBox.translatesAutoresizingMaskIntoConstraints = false
            pickupDetailsBox.backgroundColor = appGreenColor(alphaIs: 0.25)
            
            pickupDetailsBox.addSubview(pickupDetailsLabel)

            pickupDetailsBox.addSubview(addressLabel)
            pickupDetailsBox.addSubview(addressTextField)

            pickupDetailsBox.addSubview(dateLabel)
            pickupDetailsBox.addSubview(dateTextField)

            pickupDetailsBox.addSubview(timeLabel)
            pickupDetailsBox.addSubview(timeTextField)
            
            return pickupDetailsBox
        }
        private func applyPickupDetailsConstraints(){
        
        NSLayoutConstraint.activate([pickupDetailsLabel.topAnchor.constraint(equalTo:pickupDetailsBox.topAnchor, constant: 5),
                                     pickupDetailsLabel.leadingAnchor.constraint(equalTo: pickupDetailsBox.leadingAnchor),
                                     pickupDetailsLabel.widthAnchor.constraint(equalToConstant: 110),
                                     pickupDetailsLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([addressLabel.topAnchor.constraint(equalTo: pickupDetailsLabel.bottomAnchor),
                                     addressLabel.leadingAnchor.constraint(equalTo: pickupDetailsBox.leadingAnchor),
                                     addressLabel.widthAnchor.constraint(equalToConstant: 110),
                                     addressLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([addressTextField.topAnchor.constraint(equalTo: pickupDetailsLabel.bottomAnchor),
                                     addressTextField.leadingAnchor.constraint(equalTo: addressLabel.trailingAnchor, constant: 15),
                                     addressTextField.widthAnchor.constraint(equalToConstant: 200),
                                     addressTextField.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([dateLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 3),
                                     dateLabel.leadingAnchor.constraint(equalTo: pickupDetailsBox.leadingAnchor),
                                     dateLabel.widthAnchor.constraint(equalToConstant: 110),
                                     dateLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([dateTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 3),
                                     dateTextField.leadingAnchor.constraint(equalTo: addressTextField.leadingAnchor),
                                     dateTextField.widthAnchor.constraint(equalToConstant: 200),
                                     dateTextField.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([timeLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 3),
                                     timeLabel.leadingAnchor.constraint(equalTo: pickupDetailsBox.leadingAnchor),
                                     timeLabel.widthAnchor.constraint(equalToConstant: 110),
                                     timeLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([timeTextField.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 3),
                                     timeTextField.leadingAnchor.constraint(equalTo: dateTextField.leadingAnchor),
                                     timeTextField.widthAnchor.constraint(equalToConstant: 200),
                                     timeTextField.heightAnchor.constraint(equalToConstant: 32)])
    }      //  this func will apply the constraints to the UI controls in the 'Pickup Details' box
    
    
    //  The box below include the contact details controls (contact person, mobile#) surrounded by a green box
    
    let contactDetailsBox: UIView! = UIView()
    
        private func layoutContactDetailsBox() -> UIView {
        
            contactDetailsBox.translatesAutoresizingMaskIntoConstraints = false
            contactDetailsBox.backgroundColor = appGreenColor(alphaIs: 0.25)
            
            contactDetailsBox.addSubview(contactDetailsLabel)
                contactDetailsBox.addSubview(contactPersonLabel)
                contactDetailsBox.addSubview(contactPersonTextField)
                    contactDetailsBox.addSubview(mobileLabel)
                    contactDetailsBox.addSubview(mobileTextField)
            
            return contactDetailsBox
        }
        private func applyContactDetailsConstraints(){
        
        NSLayoutConstraint.activate([contactDetailsLabel.topAnchor.constraint(equalTo: contactDetailsBox.topAnchor, constant: 5),
                                     contactDetailsLabel.leadingAnchor.constraint(equalTo:contactDetailsBox.leadingAnchor),
                                     contactDetailsLabel.widthAnchor.constraint(equalToConstant: 110),
                                     contactDetailsLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([contactPersonLabel.topAnchor.constraint(equalTo: contactDetailsLabel.bottomAnchor),
                                     contactPersonLabel.leadingAnchor.constraint(equalTo:contactDetailsBox.leadingAnchor),
                                     contactPersonLabel.widthAnchor.constraint(equalToConstant: 110),
                                     contactPersonLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([contactPersonTextField.topAnchor.constraint(equalTo: contactDetailsLabel.bottomAnchor),
                                     contactPersonTextField.leadingAnchor.constraint(equalTo: contactPersonLabel.trailingAnchor, constant: 15),
                                     contactPersonTextField.widthAnchor.constraint(equalToConstant: 200),
                                     contactPersonTextField.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([mobileLabel.topAnchor.constraint(equalTo: contactPersonLabel.bottomAnchor, constant: 3),
                                     mobileLabel.leadingAnchor.constraint(equalTo:contactDetailsBox.leadingAnchor),
                                     mobileLabel.widthAnchor.constraint(equalToConstant: 110),
                                     mobileLabel.heightAnchor.constraint(equalToConstant: 32)])
        
        NSLayoutConstraint.activate([mobileTextField.topAnchor.constraint(equalTo: contactPersonTextField.bottomAnchor, constant: 3),
                                     mobileTextField.leadingAnchor.constraint(equalTo: contactPersonTextField.leadingAnchor),
                                     mobileTextField.widthAnchor.constraint(equalToConstant: 200),
                                     mobileTextField.heightAnchor.constraint(equalToConstant: 32)])
        
        
        
        
    }     //  this func will apply the constraints to the UI controls in the 'Contact Details' box


    //  Image of the donated item..
    let itemDonatedImage: UIImageView = ImageViewBlueprint().layoutImage(imageNameIs: "camera")
    
    // Brief Description text view
    let briefDescription: UITextView = TextViewBlueprint().layoutTextView()
  
    //  Pickup Details controls
    let pickupDetailsLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Pickup Details")
    
    let addressLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Address")
    let addressTextField: UITextField = TextFieldBlueprint().layoutTextField()

    let dateLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Date")
    let dateTextField: UITextField = TextFieldBlueprint().layoutTextField()

    let timeLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Time")
    let timeTextField: UITextField = TextFieldBlueprint().layoutTextField()
    
    //  Contact Details controls
    let contactDetailsLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Contact Details")
    
    let contactPersonLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Contact Person")
    let contactPersonTextField: UITextField = TextFieldBlueprint().layoutTextField()

    let mobileLabel: UILabel = LabelBlueprint().layoutLabel(theTextIs: "Mobile#")
    let mobileTextField: UITextField = TextFieldBlueprint().layoutTextField()
    
    //  Additional Notes controls
    let additionalNotesTextView: UITextView = TextViewBlueprint().layoutTextView()

    //  Submit button
    let submitButton: UIButton = ButtonBlueprint().layoutButton(theTitleIs:"Submit")
    
    
    // the function below will cycle through all textfields in the current view, and implement the bottom-border style textfield
    func underlineTextField(){
        
        let textFieldsInView:[UITextField] = [addressTextField, dateTextField, timeTextField, contactPersonTextField, mobileTextField]
        
        for txtFld in textFieldsInView {
            
            let aLayer:CALayer = CALayer()
            aLayer.frame = CGRect(x: 0,
                                  y: txtFld.frame.height - 1.0,
                                  width: txtFld.frame.width,
                                  height: 1)
            aLayer.borderWidth = 1.0
            aLayer.borderColor = appGreenColor(alphaIs: 1).cgColor
            txtFld.layer.masksToBounds = true
            txtFld.layer.addSublayer(aLayer)    // tadaaaaa
            
        }
        
    }
    

}
