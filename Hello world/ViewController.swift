//
//  ViewController.swift
//  Hello world
//
//  Created by hank8652 on 7/12/16.
//  Copyright © 2016 hank8652. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        var age = Int(textField.text!)!
        
        age = age - 1
        
        label.text = "Your age is actually \(age) in DBC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

