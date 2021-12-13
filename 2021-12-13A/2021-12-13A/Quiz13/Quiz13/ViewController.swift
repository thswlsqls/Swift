//
//  ViewController.swift
//  Quiz13
//
//  Created by Kenny on 2021/12/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNum: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let numPages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = numPages
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        lblNum.text = String(pageControl.currentPage + 1)
        lblColor()
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        lblNum.text = String(pageControl.currentPage + 1)
        lblColor()
    }
    
    func lblColor(){
        if Int(lblNum.text!)! % 2 == 0{
            lblNum.textColor = UIColor.blue
        }else{
            lblNum.textColor = UIColor.red
        }
    }
}

