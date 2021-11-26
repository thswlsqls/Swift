//
//  ViewController.swift
//  Emoji
//
//  Created by Kenny on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblEmoji: UILabel!
    var arrCount = 0
    
    var arrEmoji = ["😀","😇","😎","😤","🥸","😡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmoji.text = arrEmoji[0]
    }

    @IBAction func btnPlay(_ sender: UIButton) {
        arrCount += 1
        
        if arrCount >= arrEmoji.count{
            arrCount = 0
        }
        
        lblEmoji.text = arrEmoji[arrCount]
        
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        arrCount -= 1
        
        if arrCount < 0 {
            arrCount = arrEmoji.count - 1
        }
        
        lblEmoji.text = arrEmoji[arrCount]
    }
    
    
}// ViewController

