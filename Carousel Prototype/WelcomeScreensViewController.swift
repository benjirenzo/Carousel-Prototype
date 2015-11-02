//
//  WelcomeScreensViewController.swift
//  Carousel Prototype
//
//  Created by Benji Renzo Kuroda on 10/31/15.
//  Copyright © 2015 Benji Renzo Kuroda. All rights reserved.
//

import UIKit

class WelcomeScreensViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var welcomeScrollView: UIScrollView!
    @IBOutlet var pageControllers: UIPageControl!
    
    @IBOutlet var goButton: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScrollView.delegate = self
        
        welcomeScrollView.contentSize=CGSize(width: 1280, height: 568)
        
        welcomeScrollView.showsHorizontalScrollIndicator = false
        
        goButton.alpha = 0
        
        pageControllers.hidden = false
        
        updatePage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updatePage() {
        let offset = welcomeScrollView.contentOffset.x / welcomeScrollView.frame.size.width
        let pageIndex = Int(offset)
        pageControllers.currentPage = pageIndex
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        updatePage()
        if pageControllers.currentPage == 3 {
            print("on page 3")
            goButton.alpha = 1
            pageControllers.hidden = true
        }
    }

}
