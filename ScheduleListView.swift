//
//  DonateListView.swift
//  pcsapp
//
//  Created by Yalla code on 25/7/17.
//  Copyright © 2017 Yalla Code. All rights reserved.
//

import UIKit

class ScheduledPickupView: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var menu: MenuVC = MenuVC()
    let image = UIImage(named: "menu")
    let nav: UINavigationController = UINavigationController()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.white
        navigationItem.title = "Scheduled Pickups"
        collectionView?.register(scheduleCell.self, forCellWithReuseIdentifier: "cellId")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(menuFunction))
        
    }
    func menuFunction()  {
        
        if AppDelegate.splitVar {
            
            addChildViewController(menu)
            view.addSubview(menu.view)
            AppDelegate.splitVar = false
            
        }
        else {
            
            AppDelegate.splitVar = true
            self.menu.view.removeFromSuperview()
            
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath as IndexPath)
        return cell
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 17
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 96)
    }
    //This code eliminates extra space in between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
//------Custom Cell-----


class scheduleCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let thumbnailImage: UIImageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 96, height: 86))
    
    let cellBorder: UICollectionViewCell = {
        let borderView = UICollectionViewCell()
        borderView.layer.borderWidth = 1.0
        borderView.layer.borderColor = appGreenColor(alphaIs: 1).cgColor
        borderView.translatesAutoresizingMaskIntoConstraints = false
        return borderView
    }()
    
    let itemTitle: UILabel = UILabel(frame: CGRect(x: 116, y: 10, width: 200, height: 20))
    
    
    let dateImage = UIImageView(frame: CGRect(x: 116, y: 35, width: 17, height: 17))
    
    let dateTime: UILabel = UILabel(frame: CGRect(x: 138, y: 35, width: 200, height: 15))
    
    let locationImage = UIImageView(frame: CGRect(x: 116, y: 60, width: 17, height: 17))
    
    let locationLabel: UILabel = UILabel(frame: CGRect(x: 138, y: 60, width: 200, height: 15))
    
    func setupViews() {
        
        addSubview(thumbnailImage)
        addSubview(cellBorder)
        addSubview(itemTitle)
        addSubview(dateImage)
        addSubview(locationImage)
        addSubview(dateTime)
        addSubview(locationLabel)
        
        thumbnailImage.backgroundColor = appGreenColor(alphaIs: 1)
        dateImage.image = UIImage(named: "calendar")
        locationImage.image = UIImage(named: "location")
        dateTime.textColor = appGrayColor()
        dateTime.font = appTextFont()
        locationLabel.textColor = appGrayColor()
        locationLabel.font = appTextFont()
        itemTitle.textColor = appGreenColor(alphaIs: 1)
        itemTitle.font = appCustomFont()
        itemTitle.adjustsFontSizeToFitWidth = true
        
        //Default values
        
        locationLabel.text = "23 Bank Street, Richmond"
        dateTime.text = "5/11/2017 2:15 pm"
        itemTitle.text = "Next"
        thumbnailImage.image = UIImage(named: "next")
        
        
        // Adding constraints in visual format
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": cellBorder]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": cellBorder]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
