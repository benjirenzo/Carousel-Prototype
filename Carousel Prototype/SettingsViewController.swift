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
    
    
    @IBAction func signOut(sender: AnyObject) {
        print("signoutpressed")
        let signOutAlertController = UIAlertController(title:"Log Out", message:"Are you sure?", preferredStyle: .ActionSheet)
        
        let logOutAction = UIAlertAction(title: "Log Out", style: .Destructive) {(action) in
        self.performSegueWithIdentifier("signedOutSegue", sender: self )
        }
        
        let cancelAction = UIAlertAction(title: "cancel", style: .Cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        
        signOutAlertController.addAction(logOutAction)
        signOutAlertController.addAction(cancelAction)
        
        presentViewController(signOutAlertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
        

    }

}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


