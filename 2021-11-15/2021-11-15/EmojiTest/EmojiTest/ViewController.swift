//
//  ViewController.swift
//  EmojiTest
//
//  Created by Kenny on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    
    var arrNumber = ["1","2","3","4","5","6","7","8","9","10"]
    var arrCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber.text = arrNumber[0]
    }

    @IBAction func btnIncrease(_ sender: UIButton) {
        if arrCount >= 10{
            lblNumber.text = "X"
        }else{
            lblNumber.text = arrNumber[arrCount]
        }
        arrCount += 1
    }
    
}// ViewController

