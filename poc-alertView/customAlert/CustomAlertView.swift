//
//  CustomAlertView.swift
//  poc-alertView
//
//  Created by Raphael Natura on 30/05/18.
//  Copyright © 2018 Raphael Natura. All rights reserved.
//

import UIKit

class CustomAlertView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    static func customAlert() -> CustomAlertView {
        return Bundle.main.loadNibNamed("CustomAlertView", owner: self, options: nil)!.first as! CustomAlertView
    }
    
}
