//
//  CreateViewController.swift
//  iosETA
//
//  Created by Jim Ko on 2017-10-13.
//  Copyright © 2017 Jim Ko. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func BackToMain(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToMain", sender: self)
    }
}
