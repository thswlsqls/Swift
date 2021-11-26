//
//  ViewController.swift
//  ButtonName
//
//  Created by Kenny on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var welcome = "Welcome!"
    var addSome = " 한경호"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblWelcome.text = welcome
    }

    @IBAction func btnName(_ sender: UIButton) {
        lblWelcome.text?.append(addSome)
    }
    
} // ViewController

