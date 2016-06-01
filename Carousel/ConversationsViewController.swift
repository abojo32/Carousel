//
//  ConversationsViewController.swift
//  Carousel
//
//  Created by Anthony Bojorquez on 5/31/16.
//  Copyright © 2016 Anthony Bojorquez. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onButton(sender: AnyObject) {
        // Go back
        navigationController?.popToRootViewControllerAnimated(true)
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
