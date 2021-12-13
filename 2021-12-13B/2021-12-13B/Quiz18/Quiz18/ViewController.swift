//
//  ViewController.swift
//  Quiz18
//
//  Created by Kenny on 2021/12/11.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var sites: [String] = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.cbs.com"]

    var siteNames: [String] = ["네이버", "구글", "다음", "네이트", "CNN", "CBS"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
        myWebView.navigationDelegate = self
        
        loadWebpage(url: sites[0])
    }

    func loadWebpage(url: String){
        let siteContents = "http://" + url
        let myUrl = URL(string: siteContents)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }

} // ViewController

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sites.count
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(siteNames[row])"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        loadWebpage(url: sites[row])
    }
}

extension ViewController: WKNavigationDelegate{
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
