//
//  ViewController.swift
//  poc-alertView
//
//  Created by Raphael Natura on 29/05/18.
//  Copyright © 2018 Raphael Natura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapButton(_ sender: Any) {
        
        let alert = CustomAlert(title: "Hello there!! 👋🏻👋🏻",description: "Maecenas auctor tristique placerat. Morbi a tincidunt lectus. Aenean vestibulum nulla velit, in mattis ligula iaculis vel. Ut est eros, lacinia a vestibulum ut, sodales id tellus.  ")
        
        alert.show(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

