//
//  SettingsViewController.swift
//  Carousel Prototype
//
//  Created by Benji Renzo Kuroda on 11/1/15.
//  Copyright © 2015 Benji Renzo Kuroda. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsScrollView: UIScrollView!
   
    @IBOutlet var settingsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = settingsImageView.frame.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissSettings(sender: AnyObject) {
        
          self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    //@IBAction func pressSignOut(sender: AnyObject) {
        //let alertController = UIAlertController(title: "Log Out", message: "Are you sure??", preferredStyle: .ActionSheet)
        //let logoutAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
                //performSegueWithIdentifier(signOutSegue, sender: self)
        //}

    //}


    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


