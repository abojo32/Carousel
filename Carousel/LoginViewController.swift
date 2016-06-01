//
//  LoginViewController.swift
//  Carousel
//
//  Created by Anthony Bojorquez on 5/30/16.
//  Copyright © 2016 Anthony Bojorquez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var buttonParentView: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
   
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    //define variables for intiial y and offset
    
    var initialY: CGFloat!
    var offset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name:UIKeyboardWillShowNotification, object: nil)
        
        scrollView.delegate = self
        
        scrollView.contentSize = scrollView.frame.size
        
        scrollView.contentInset.bottom = 100

        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name:UIKeyboardWillHideNotification, object: nil)
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButton(sender: AnyObject) {
        print("pressed login button")
        
        
        //Start animating the activity indicator
        print("start animation")
       self.activityIndicator.startAnimating()
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            print("fields are empty")
            
            
            //Delay for 2 seconds
            delay(2){
        
            //Stop animating the activity indicator
            self.activityIndicator.stopAnimating()
                
            }
        
            let alertController = UIAlertController(title: "Email/Password Required", message: "Please enter login information", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (UIAlertAction) in
            
            })
            
            alertController.addAction(okAction)
            presentViewController(alertController, animated: true, completion: nil)
            
        } else if emailField.text == "anthony" && passwordField.text == "welcome" {
            //Delay for 2 seconds
          delay(2){
                //Stop animating the activity indicator
                self.activityIndicator.stopAnimating()
                }
            
            print("good to go")
            performSegueWithIdentifier("loggedInSegue", sender: nil)
            
        } else {
            print("bad email or password")
        }
        
        let alertController = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid email or password", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (UIAlertAction) in
       
        })
        
        alertController.addAction(okAction)
        presentViewController(alertController, animated: true, completion: nil)
        
       
    }
    
    // The keyboard is about to be shown
    
    func keyboardWillShow(notification: NSNotification!) {
        print("keyboardWillShow")
        
        // Move the button up above keyboard
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        
        // Scroll the scrollview up
        scrollView.contentOffset.y = scrollView.contentInset.bottom
    
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTap(sender: AnyObject) {
    
                view.endEditing(true)
        
        func scrollViewDidScroll(scrollView: UIScrollView) {
            // This method is called as the user scrolls
        }
        
        func scrollViewWillBeginDragging(scrollView: UIScrollView) {
            
        }
        
        func scrollViewDidEndDragging(scrollView: UIScrollView,
            willDecelerate decelerate: Bool) {
                // This method is called right as the user lifts their finger
        }
        
        func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
            // This method is called when the scrollview finally stops scrolling.
        }
        
        func didPressLogin(sender: AnyObject) { }
        
        

        
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
       
    


