//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kenny on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblHello.text = "Hello World!"
    }


}

