//
//  ViewController.swift
//  Quiz02
//
//  Created by Kenny on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {

    // 입력 받는 부분
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    // 결과값 출력 부분
    @IBOutlet weak var tfAddition: UITextField!
    @IBOutlet weak var tfSubtraction: UITextField!
    @IBOutlet weak var tfMultiplication: UITextField!
    @IBOutlet weak var tfDivisionQuotient: UITextField!
    @IBOutlet weak var tfDivisionRemainder: UITextField!
    
    // 출력 메세지
    @IBOutlet weak var tfMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfMessage.text = ""
        
        // 계산 결과 field를 read only로 변경
        readOnly()
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else { return }
        guard let strNum2 = tfNum2.text else { return }
        
        let num1 = Int(strNum1)!
        let num2 = Int(strNum2)!
        
        calculation(num1, num2)
        
    }
    
    func calculation(_ intNum1: Int, _ intNum2: Int){
        tfAddition.text = String(intNum1 + intNum2)
        tfSubtraction.text = String(intNum1 - intNum2)
        tfMultiplication.text = String(intNum1 * intNum2)
        tfDivisionQuotient.text = String(intNum1 / intNum2)
        tfDivisionRemainder.text = String(intNum1 % intNum2)
        
        tfMessage.text = "계산이 완료 되었습니다"
    }
    
    func readOnly(){
        tfAddition.isUserInteractionEnabled = false
        tfSubtraction.isUserInteractionEnabled = false
        tfMultiplication.isUserInteractionEnabled = false
        tfDivisionQuotient.isUserInteractionEnabled = false
        tfDivisionRemainder.isUserInteractionEnabled = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
} // ViewController

