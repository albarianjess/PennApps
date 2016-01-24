//
//  SecondViewController.swift
//  FinalPennApps
//
//  Created by Jessie Albarian on 1/23/16.
//  Copyright © 2016 babyllama. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

//    var image1: UIImageView!
//    var image2: UIImageView!
//    var image3: UIImageView!
//    var image4: UIImageView!
//    var image5: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            updateInfo()
//        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
//        dispatch_async(dispatch_get_global_queue(priority, 0)) {
//            // do some task - touch url
//            
//            dispatch_async(dispatch_get_main_queue()) {
//                // update some UI - add animal info
//                
//                
//                
//            }
        
        

        
        }
    
    
    func updateInfo() {

        
//        let xcoord : CGFloat = 100
//        let ycoord : CGFloat = 100
        
        
        // IMAGE ONE
        var image1 : UIImageView
        image1 = UIImageView(frame:CGRectMake(0,0, 175, 175))
        image1.contentMode = .ScaleAspectFit
        image1.contentMode = UIViewContentMode.Center
        image1.image = UIImage(named:"dog.jpg")
        image1.frame.origin.y = 120.0
        image1.frame.origin.x = ((self.view.bounds.size.width - image1.frame.size.width)/2.0)
        self.view.addSubview(image1)
        
        // NAME
        let name = UILabel(frame: CGRectMake(0, 0, 200, 21))
        name.textAlignment = NSTextAlignment.Center
        name.text = "Mocha"
        self.view.addSubview(name)
        
        let breed = UILabel(frame: CGRectMake(0, 0, 200, 21))
        breed.textAlignment = NSTextAlignment.Center
        breed.text = "German Shephard"
        self.view.addSubview(breed)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

