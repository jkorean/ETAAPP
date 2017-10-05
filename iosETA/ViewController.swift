//
//  ViewController.swift
//  iosETA
//
//  Created by Jim Ko on 2017-09-29.
//  Copyright © 2017 Jim Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _join_button: UIButton!
    
    var uniqueCode = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func JoinAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Enter Code", message: "", preferredStyle: .alert)
        
        //Adding a Text Field
        alert.addTextField { (textField) in
            textField.placeholder = "Code"
        }
        
        alert.addAction(UIAlertAction(title: "Join", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            self.uniqueCode = (textField?.text)!
            print(self.uniqueCode)
            if (self.uniqueCode == "XQC123") {
                self.performSegue(withIdentifier: "VC2", sender: self)
            } else {
                let alert_2 = UIAlertController(title: "Invalid Code", message: "Try Again", preferredStyle: .alert)
                self.present(alert_2, animated: true, completion: nil)
                alert_2.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
                    print("Handle Cancel logic here")
                }))
            }
        }))
        
        //Adding a cancel button to the alert
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
            print("Handle Cancel logic here")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

