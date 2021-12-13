//
//  ViewController.swift
//  Quiz19
//
//  Created by Kenny on 2021/05/30.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var tfSites: UILabel!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var sites : [String] = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.cbs.com"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myWebView.navigationDelegate = self
        
        pageControl.numberOfPages = sites.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        tfSites.text = sites[pageControl.currentPage]
        loadWebpage(url: sites[0])
    }

    func loadWebpage(url: String){
        let addProtocol = "http://" + url
        let myUrl = URL(string: addProtocol)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        tfSites.text = sites[pageControl.currentPage]
        loadWebpage(url: sites[pageControl.currentPage])
    }
    
} // ViewController

extension ViewController: WKNavigationDelegate{
    
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // Error발생시
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
} // ---


