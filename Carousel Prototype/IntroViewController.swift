//
//  IntroViewController.swift
//  Carousel Prototype
//
//  Created by Benji Renzo Kuroda on 10/28/15.
//  Copyright © 2015 Benji Renzo Kuroda. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet var introScroll: UIScrollView!
    
    @IBOutlet var introImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScroll.contentSize = introImage.frame.size

        // Do any additional setup after loading the view.
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
