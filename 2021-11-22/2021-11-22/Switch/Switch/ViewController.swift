//
//  ViewController.swift
//  Switch
//
//  Created by Kenny on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfKorean: UITextField!
    @IBOutlet weak var tfMath: UITextField!
    @IBOutlet weak var tfEnglish: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        // Optional Binding
        guard let strKorean = tfKorean.text else { return }
        guard let strMath = tfMath.text else { return }
        guard let strEnglish = tfEnglish.text else { return }
        
        // 숫자 필드 체크
        if strKorean.isEmpty || strMath.isEmpty || strEnglish.isEmpty{
            lblMessage.text = "숫자를 확인 하세요!"
        }else{
            let tot = Int(strKorean)! + Int(strMath)! + Int(strEnglish)!
            let avg = Double(tot) / 3.0
            
            var grade: String = ""
            grade = avg >= 90 ? "수" :
                avg >= 80 ? "우" :
                avg >= 70 ? "미" :
                avg >= 60 ? "양" : "가"
            
            lblMessage.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade) 입니다."
        }
    }
    
}// ViewController

