//
//  WebViewController.swift
//  CatTown
//
//  Created by Kristin Ho on 3/1/16.
//  Copyright © 2016 Kristin Ho. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Create the Google NSURL
        let catURL = NSURL(string: "https://en.wikipedia.org/wiki/Cat")
        
        //Create the NSURL request, make notw how the NSURL is wrapped
        let webRequest = NSURLRequest(URL: catURL!)
        
        
        //Load the request
        webView.loadRequest(webRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
