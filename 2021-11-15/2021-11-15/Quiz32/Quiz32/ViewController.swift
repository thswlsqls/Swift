//
//  ViewController.swift
//  Quiz32
//
//  Created by Kenny on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        // 숫자 크기 비교하여 정의
        var num1st: Int
        var num2nd: Int
        var totalNum: Int = 0 // 합계 누적 변수
        
        // 입력을 안하였을 경우 기본값으로 0으로 대체하여 계산하기
        let numNum1 = Int(tfNum1.text!) ?? 0
        let numNum2 = Int(tfNum2.text!) ?? 0
        
        // 숫자 크기 비교하기
        if numNum1 > numNum2 {
            num1st = numNum2
            num2nd = numNum1
        }else{
            num1st = numNum1
            num2nd = numNum2
        }
        
        // 범위 연산자로 계산하기
        for i in num1st...num2nd{
            totalNum += i
        }
        
        lblMessage.text = "입력하신 \(numNum1)부터 \(numNum2)의 합계는 \(totalNum) 입니다."
    }
    
}// ViewController

