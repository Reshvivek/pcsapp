//
//  ImagePickerVC.swift
//  pcsapp
//
//  Created by Yalla Code on 12/8/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class ImagePickerVC: UIImagePickerController {
    
    override func loadView() {
        super.loadView()
        
        self.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.allowsEditing = false
        
    }

}
