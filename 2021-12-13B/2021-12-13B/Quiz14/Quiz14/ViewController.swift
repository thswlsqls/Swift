//
//  ViewController.swift
//  Quiz14
//
//  Created by Kenny on 2021/01/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnImage(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnTimer(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
    @IBAction func btnPage(_ sender: UIButton) {
        tabBarController?.selectedIndex = 3
    }
}

