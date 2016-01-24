//
//  FirstViewController.swift
//  FinalPennApps
//
//  Created by Jessie Albarian on 1/23/16.
//  Copyright © 2016 babyllama. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    
    
    
    
    @IBAction func callButton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://17206207466")!)
        
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

