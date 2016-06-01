//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Anthony Bojorquez on 5/31/16.
//  Copyright © 2016 Anthony Bojorquez. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
        func scrollViewDidScroll(scrollView: UIScrollView!) {
            // This method is called as the user scrolls
        }
        
        func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
            
        }
        
        func scrollViewDidEndDragging(scrollView: UIScrollView!,
            willDecelerate decelerate: Bool) {
                // This method is called right as the user lifts their finger
        }
        
        func scrollViewDidEndDecelerating(scrollView: UIScrollView!){
            
            // Get the current page based on the scroll offset
            
            let page : Int = Int(round(scrollView.contentOffset.x / 320))
            
            // Set the current page, so the dots will update
            
            pageControl.currentPage = page
            pageControl.numberOfPages = 4
            pageControl.currentPageIndicatorTintColor = UIColor.redColor()
            
            // This method is called when the scrollview finally stops scrolling.
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
    
}
