//
//  ViewController.swift
//  Quiz31
//
//  Created by Kenny on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = ""
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        // Optional Unwrapping
        guard let strNum1 = tfNum1.text else { return }
        guard let strNum2 = tfNum2.text else { return }
        
        if strNum1.isEmpty || strNum2.isEmpty{ // 숫자 입력 확인
            lblMessage.text = "숫자를 확인하세요!"
        }else{
            let numNum1 = Int(strNum1)
            let numNum2 = Int(strNum2)
            
            if numNum1! % 2 == 0 && numNum2! % 2 == 0{ // 짝수 입력 확인
                let numResult = numNum1! + numNum2!
                
                tfResult.text = String(numResult)
                lblMessage.text = "계산이 완료 되었습니다."
            }else{
                lblMessage.text = "짝수를 입력 하세요!"
            }
        }
        
    }
    
}// ViewController

