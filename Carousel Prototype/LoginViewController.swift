//
//  LoginViewController.swift
//  Carousel Prototype
//
//  Created by Benji Renzo Kuroda on 10/30/15.
//  Copyright © 2015 Benji Renzo Kuroda. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet var loginFieldsView: UIView!
    
    @IBOutlet var signInButtonsView: UIView!
    
    @IBOutlet var emailField: UITextField!
    
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    
    
    var loginFieldsViewInitialY:CGFloat!
    
    let loginFieldsViewOffset:CGFloat! = -75
    
    var signInButtonsViewInitialY:CGFloat!
    
    let signInViewOffset:CGFloat! = -200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 600)

        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        loginFieldsViewInitialY = loginFieldsView.frame.origin.y
        
        signInButtonsViewInitialY = signInButtonsView.frame.origin.y

    
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func keyboardWillShow(notification:NSNotification) {
        
        self.loginFieldsView.frame.origin = CGPoint(x:self.loginFieldsView.frame.origin.x, y: self.loginFieldsViewInitialY + self.loginFieldsViewOffset)
        
        self.signInButtonsView.frame.origin = CGPoint(x:self.signInButtonsView.frame.origin.x, y: self.signInButtonsViewInitialY + self.signInViewOffset)
    }

    
    func keyboardWillHide(notification: NSNotification!) {
        
        self.loginFieldsView.frame.origin = CGPoint(x:self.loginFieldsView.frame.origin.x, y: self.loginFieldsViewInitialY)
        
        self.signInButtonsView.frame.origin = CGPoint(x:self.signInButtonsView.frame.origin.x, y: self.signInButtonsViewInitialY)
    }
    
    func checkCredentials() {
        if passwordField.text == "password" && emailField.text == "email"{
            performSegueWithIdentifier("logInSegue", sender: self)
        }
        else {
            
            let alertControllerBadCredentials = UIAlertController(title: "Oops!", message: "Email or Password are incorrect", preferredStyle: .Alert)
            
            presentViewController(alertControllerBadCredentials, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                // handle cancel response here. Doing nothing will dismiss the view.
            }
            // add the cancel action to the alertController
            alertControllerBadCredentials.addAction(cancelAction)
            
        }
        
        self.loadingIndicator.stopAnimating()
        
        
    }
    
    
    @IBAction func tapToHideKeyboard(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func tapSignIn(sender: AnyObject) {
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
                let alertController = UIAlertController(title: "Sorry!", message: "You must include a usernanme and password", preferredStyle: .Alert)
            
                presentViewController(alertController, animated: true) {
                }
            
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
        } else {
            delay(2) {
            self.checkCredentials()
            }
            self.loadingIndicator.startAnimating()
        }
    }
    
    @IBAction func goBackFromSignIn(sender: AnyObject) {
            navigationController?.popViewControllerAnimated(true)
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
