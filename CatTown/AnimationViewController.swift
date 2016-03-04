//
//  AnimationViewController.swift
//  CatTown
//
//  Created by Kristin Ho on 3/1/16.
//  Copyright © 2016 Kristin Ho. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var jerryImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // catImage.center.x -= view.bounds.width
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.5, delay: 0.9,
            options: [.Repeat, .Autoreverse, .CurveEaseInOut], animations: {
                self.catImage.center.x += self.view.bounds.width
                self.jerryImage.center.x -= self.view.bounds.width
            }, completion: nil)
        
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
