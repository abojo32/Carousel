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
    
    @IBAction func onButton(sender: AnyObject) {
        self.activityIndicator.startAnimating()
    
    }
   
    
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
     

        
        scrollView.contentSize = scrollView.frame.size
        
        scrollView.contentInset.bottom = 100
        
        scrollView.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name:UIKeyboardWillHideNotification, object: nil)
    

        // Do any additional setup after loading the view.
    }
    
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
