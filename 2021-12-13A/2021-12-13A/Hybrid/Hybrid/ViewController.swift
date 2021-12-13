//
//  ViewController.swift
//  Hybrid
//
//  Created by Kenny on 2021/12/11.
//

import UIKit
import WebKit // <----

class ViewController: UIViewController {

    @IBOutlet weak var tfUrl: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.navigationDelegate = self
        // 첫화면은 naver로 띄우자!
        loadWebPage(url: "https://www.naver.com")
    }

    func loadWebPage(url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        
        myWebView.load(myRequest)
    }

    @IBAction func btnSite1(_ sender: UIButton) {
        loadWebPage(url: "https://www.google.com")
    }
    
    @IBAction func btnSite2(_ sender: UIButton) {
        loadWebPage(url: "https://www.daum.net")
    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        let myUrl = checkUrl(tfUrl.text!)
        loadWebPage(url: myUrl)
    }
    
    func checkUrl(_ url: String) -> String{
        var strUrl = url
        let flag = strUrl.hasPrefix("http://") || strUrl.hasPrefix("https://")
        
        if !flag{
            strUrl = "http://" + strUrl
        }
        return strUrl
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
    @IBAction func btnHtml(_ sender: UIButton) {
        let htmlString = """
            <html>
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-with, initial-scale=1.0">
                </head>
                <body>
                    <h1>HTML String</h1>
                    <p>String 변수를 이용한 웹페이지</p>
                    <p><a href="http://jtbc.joins.com">JTBC</a>로 이동</p>
                </body>
            </html>
            """
        myWebView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
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
    // Error 발생시
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}











