//
//  DonateVC.swift
//  pcsapp
//

import UIKit

class DonateVC: UIViewController {
    
    
    fileprivate let instanceOfDonateView = DonateView()
    fileprivate let instanceOfImagePickerVC = ImagePickerVC()
    
    override func loadView(){
        
        super.loadView()
        
        view.addSubview(instanceOfDonateView.layoutDonateScrollView())
        
        // func to apply the constraints so that the scroll view takes the whole size of the screen
        applyScrollViewConstraints()
        
        //  will use the following 2 delegates to clear the textviews on donate screen - check the extension below
        instanceOfDonateView.briefDescription.delegate = self
        instanceOfDonateView.additionalNotesTextView.delegate = self
        
        // will use the follwoing delegate to handle picking photos using imagepicker - check the extension below
        instanceOfImagePickerVC.delegate = self
        
        //  now enable user to tap on the image to choose from the device's photo library
        instanceOfDonateView.itemDonatedImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(itemDonatedImageTapped)))
        
    }
    
    private func applyScrollViewConstraints() {
        
        let dsv = instanceOfDonateView.donateScrollView
        
        let constraintValuesAre = (leading: dsv.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                   trailing: dsv.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                   top: dsv.topAnchor.constraint(equalTo: self.view.topAnchor),
                                   bottom: dsv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        
        NSLayoutConstraint.activate([constraintValuesAre.leading, constraintValuesAre.trailing, constraintValuesAre.top, constraintValuesAre.bottom])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.tabBarController?.navigationItem.title = "Donate"
        
    }
    
    override func viewDidLayoutSubviews() {
        
        instanceOfDonateView.underlineTextField()
    }
    
  
    func itemDonatedImageTapped() {    //  will show the photo library
        
        self.present(instanceOfImagePickerVC, animated: true, completion: nil)
        
    }
    
    
}

extension DonateVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let anImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            instanceOfDonateView.itemDonatedImage.contentMode = UIViewContentMode.scaleAspectFit
            instanceOfDonateView.itemDonatedImage.backgroundColor = UIColor.clear
            instanceOfDonateView.itemDonatedImage.image = anImage
            
        } else {
            
            print("there has been an error")
        }
        
        instanceOfImagePickerVC.dismiss(animated: false, completion: nil)
    }
    
}

extension DonateVC: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        
        if instanceOfDonateView.briefDescription.isFirstResponder {
            
            if instanceOfDonateView.briefDescription.hasText &&
                instanceOfDonateView.briefDescription.text == "Tap to add a brief description" {
                
                instanceOfDonateView.briefDescription.text = ""
                
            }
            
            if !instanceOfDonateView.additionalNotesTextView.hasText {
                instanceOfDonateView.additionalNotesTextView.text = "Additional Notes (e.g. notes for pickup)"
            }
            
        } else if instanceOfDonateView.additionalNotesTextView.isFirstResponder {
            
            if instanceOfDonateView.additionalNotesTextView.hasText &&
                instanceOfDonateView.additionalNotesTextView.text == "Additional Notes (e.g. notes for pickup)" {
                
                instanceOfDonateView.additionalNotesTextView.text = ""
                
            }
            
            if !instanceOfDonateView.briefDescription.hasText {
                instanceOfDonateView.briefDescription.text = "Tap to add a brief description"
            }
            
        }
        
        
        
        
    }
    
}
