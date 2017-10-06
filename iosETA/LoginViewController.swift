//
//  LoginViewController.swift
//  iosETA
//
//  Created by Naman Sharma on 2017-10-06.
//  Copyright © 2017 Jim Ko. All rights reserved.
//


import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var actionButton: UIButton!
    
    
    @IBAction func action(_ sender: UIButton) {
        if userText.text != "" && passText.text != ""
        {
            if segmentControl.selectedSegmentIndex == 0 //Login User
            {
                Auth.auth().signIn(withEmail: userText.text!, password: passText.text!, completion: { (user, error) in
                    
                    if user != nil
                    {
                        //Successful
                        print("SUCCESS")
                        self.performSegue(withIdentifier: "loginSegue", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("ERROR")
                        }
                    }
                })
    
            }
            else
            {
                Auth.auth().createUser(withEmail: userText.text!, password: passText.text!, completion: { (user, error) in
                    
                    if user != nil
                    {
                        //Successful
                        print("SUCCESS")
                         self.performSegue(withIdentifier: "loginSegue", sender: self)
                    }
                    else
                    {
                        if let myError = error?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("ERROR")
                        }
                    }
                })

            
            }
        }
            
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

