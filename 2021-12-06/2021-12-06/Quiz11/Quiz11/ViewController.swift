//
//  ViewController.swift
//  Quiz11
//
//  Created by Kenny on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var tfResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        num1.text = getNum()
        num2.text = getNum()
    }

    func getNum() -> String {
        return String(Int.random(in: 1..<10))
    }
    
    
    @IBAction func btnOK(_ sender: UIButton) {
        let answer: Int = Int(num1.text!)! * Int(num2.text!)!
        let result: Int = Int(tfResult.text!)!
        
        if answer == result{
            resultOK()
        }
        
        if answer != result{
            resultMiss()
        }
    }
    
    func resultOK(){
        let calcOnAlert = UIAlertController(title: "결과", message: "정답 입니다.", preferredStyle: .alert)
        let onAction = UIAlertAction(title: "다음 문제 진행", style: .default, handler: {ACTION in
            self.tfResult.text = ""
            self.num1.text = self.getNum()
            self.num2.text = self.getNum()
        })
        
        calcOnAlert.addAction(onAction)
        present(calcOnAlert, animated: true, completion: nil)
    }
    
    func resultMiss(){
        let calcOnAlert = UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: .alert)
        let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: {ACTION in
            self.tfResult.text = ""
        })
        
        calcOnAlert.addAction(onAction)
        present(calcOnAlert, animated: true, completion: nil)

    }
    
}// ViewController

