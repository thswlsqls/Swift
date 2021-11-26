//
//  ViewController.swift
//  ButtonName2
//
//  Created by Kenny on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSmile: UILabel!
    
    
    var smile: String = "😄"
    var smile2: String = "😛"
    var smile3: String = "😡"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSmile.text = smile
    }

    @IBAction func btnSmile(_ sender: Any) {
        lblSmile.text?.append(smile)
    }
    
    @IBAction func btnSmile2(_ sender: UIButton) {
        lblSmile.text?.append(smile2)
    }
    
    @IBAction func btnSmile3(_ sender: UIButton) {
        lblSmile.text?.append(smile3)
    }
    
    
} // ViewController

