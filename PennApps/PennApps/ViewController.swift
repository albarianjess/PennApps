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
    
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        startConnection()
    }
    
    func startConnection(){
        let urlPath: String = "http://binaenaleyh.net/dusor/"
        var url: NSURL = NSURL(string: urlPath)
        var request: NSURLRequest = NSURLRequest(URL: url)
        var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)
        connection.start()
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!){
        self.data.appendData(data)
    }
    
    func buttonAction(sender: UIButton!){
        startConnection()
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        var err: NSError
        // throwing an error on the line below (can't figure out where the error message is)
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        println(jsonResult)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

