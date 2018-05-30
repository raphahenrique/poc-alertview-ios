//
//  CustomAlertView.swift
//  poc-alertView
//
//  Created by Raphael Natura on 30/05/18.
//  Copyright © 2018 Raphael Natura. All rights reserved.
//

import UIKit

class CustomAlertView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("CustomAlertView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
    
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        //contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[view]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["view":contentView]))
        
        //contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[view]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["view":contentView]))
        
        //contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
    }
    
}
