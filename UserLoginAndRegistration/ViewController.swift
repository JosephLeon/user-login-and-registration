//
//  ViewController.swift
//  UserLoginAndRegistration
//
//  Created by Joseph Leon on 5/30/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        self.performSegueWithIdentifier("loginView", sender: self)
    }

}

