//
//  PodViewController.swift
//  CatTown
//
//  Created by Kristin Ho on 3/1/16.
//  Copyright © 2016 Kristin Ho. All rights reserved.
//

import UIKit
import HoneycombView

class PodViewController: UIViewController {

    var imageNames = ["british", "persian", "bengel", "shorthair", "toyfer", "angryCat", "cuteCat", "orangeCat", "lumpyCat", "dogCat", "surprisedCat"]
    var images = [UIImage]()
    //var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<11{
            images.append(UIImage(named: imageNames[i])!)
        }
        
        
        
        let honeycombView = HoneycombView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height))
        honeycombView.diameter = 160.0
        honeycombView.margin = 1.0
        honeycombView.configrationForHoneycombViewWithImages(images)
        view.addSubview(honeycombView)
        
        honeycombView.animate(2.0)
        
            
        
       
        
    }
}





