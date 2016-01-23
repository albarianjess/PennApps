//
//  ViewController.swift
//  PennApps
//
//  Created by Jessie Albarian on 1/22/16.
//  Copyright © 2016 babyllama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, NSURLConnectionDelegate {
    
    //
    // Variables
    //
    var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    lazy var data = NSMutableData()
    
    
    //
    // Do any additional setup after loading the view, typically from a nib.
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create Image: works
        let image = UIImage(named: "kitten1.png")!
        imageView = UIImageView(image: image)

        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //scrollView.addSubview(imageView)
        view.addSubview(imageView)
        //scrollView.contentSize = image.size
    }
    
    func getData() {
        let url = NSURL(string: "https://52.35.14.9")
        let requestGet = NSMutableURLRequest(URL: url!)
        var response: NSURLResponse?
    
        requestGet.HTTPMethod = "GET"
        requestGet.addValue("application/json", forHTTPHeaderField: "Accept")
    
        NSURLConnection.sendAsynchronousRequest
        (requestGet, queue: NSOperationQueue.mainQueue())
            {(response, data, error) in print(NSString(data: data!, encoding: NSUTF8StringEncoding))
    }
    
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

