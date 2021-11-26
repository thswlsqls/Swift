//
//  ViewController.swift
//  Quiz01
//
//  Created by Kenny on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    let welcomeStr = "Welcome!"
    let idStr = "Kenny"
    var count: Int = 0 // 홀수, 짝수 판별
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = welcomeStr
    }

    @IBAction func btnName(_ sender: UIButton) {
//        // 홀수 짝수 판별 방법
//        if count % 2 == 0{
//            lblWelcome.text = welcomeStr + idStr
//        }else{
//            lblWelcome.text = welcomeStr
//        }
//        count += 1
        
        // 다음 번에 활용할 변수 정의하기
        if count == 0{
            lblWelcome.text = welcomeStr + idStr
            count = 1
        }else{
            lblWelcome.text = welcomeStr
            count = 0
        }
        
    }
    
} // ViewController

