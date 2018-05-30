//
//  CustomAlert.swift
//  poc-alertView
//
//  Created by Raphael Natura on 29/05/18.
//  Copyright © 2018 Raphael Natura. All rights reserved.
//

import UIKit

class CustomAlert: UIView, Modal {
    var backgroundView = UIView()
    
    var dialogView = UIView()
    
    convenience init(title: String, description: String) {
        self.init(frame: UIScreen.main.bounds)
        initialize(title: title,description: description)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize(title:String, description:String){
        dialogView.clipsToBounds = true
        
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTappedOnBackgroundView)))
        addSubview(backgroundView)
        
        dialogView.frame.origin = CGPoint(x: 0, y: 0)
        dialogView.frame.size = CGSize(width: frame.width-32, height: frame.height/3)
        
        dialogView.backgroundColor = UIColor.white
        dialogView.layer.cornerRadius = 6
        
        let alertView = CustomAlertView.customAlert()
        alertView.titleLabel.text = title
        alertView.descriptionLabel.text = description
        alertView.cancelButton.backgroundColor = UIColor.brown
        
        
        dialogView.addSubview(alertView)
        
        addSubview(dialogView)
 
    }
    
    @objc func didTappedOnBackgroundView(){
        dismiss(animated: true)
    }
    
}

