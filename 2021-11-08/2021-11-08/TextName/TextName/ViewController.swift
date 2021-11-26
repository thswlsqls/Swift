//
//  ViewController.swift
//  TextName
//
//  Created by Kenny on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var tfName: UITextField!
    var welcome = "Welcome! "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblWelcome.text = welcome
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblWelcome.text! += tfName.text!
        tfName.text?.removeAll()
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        lblWelcome.text = welcome
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
}// ViewController

