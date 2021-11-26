//
//  ViewController.swift
//  Quiz03
//
//  Created by Kenny on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInputNumer: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = ""
    }

    @IBAction func btnDecision(_ sender: UIButton) {
        var message: String
        
        if tfInputNumer.text?.isEmpty == true{
            message = "짝수"
        }else{
            if Int(tfInputNumer.text!)! % 2 == 0{
                message = "짝수"
            }else{
                message = "홀수"
            }
        }
        
        lblResult.text = "입력하신 숫자는 \(message) 입니다."
    }
    
} // ViewController

