//
//  ViewController.swift
//  Quiz02
//
//  Created by Kenny on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfAddition: UITextField!
    @IBOutlet weak var tfSubtraction: UITextField!
    @IBOutlet weak var tfMultiplication: UITextField!
    @IBOutlet weak var tfDivisionQuotient: UITextField!
    @IBOutlet weak var tfDivisionRemainder: UITextField!
    @IBOutlet weak var tfMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfMessage.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        
        // 숫자 입력이 않되었을 경우 체크
//        if tfNum1.text?.count == 0 || tfNum2.text?.count == 0{
        if tfNum1.text?.isEmpty == true || tfNum2.text?.isEmpty == true{
            tfMessage.text = "숫자를 입력 하세요!"
        }else{
            tfAddition.text = String(Int(tfNum1.text!)! + Int(tfNum2.text!)!)
            tfSubtraction.text = String(Int(tfNum1.text!)! - Int(tfNum2.text!)!)
            tfMultiplication.text = String(Int(tfNum1.text!)! * Int(tfNum2.text!)!)
            
            // 나누기 분모가 0인 경우 체크
            if tfNum2.text == "0"{
                tfDivisionQuotient.text = "계산 불가"
                tfDivisionRemainder.text = "계산 불가"
            }else{
                tfDivisionQuotient.text = String(Int(tfNum1.text!)! / Int(tfNum2.text!)!)
                tfDivisionRemainder.text = String(Int(tfNum1.text!)! % Int(tfNum2.text!)!)
            }
            
            tfMessage.text = "계산이 완료 되었습니다."
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

} // ViewController

