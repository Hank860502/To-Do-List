//
//  SecondViewController.swift
//  To Do LIst
//
//  Created by hank8652 on 7/16/16.
//  Copyright © 2016 hank8652. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var newItem: UITextField!
    @IBAction func submit(sender: AnyObject) {
        toDoList.append(newItem.text!)
        newItem.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject("toDoList", forKey: "toDoList")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldSholdReturn(textField: UITextField) -> Bool {
    
        newItem.resignFirstResponder()
        return true
    }


}

