//
//  ViewController.swift
//  Quiz05
//
//  Created by Kenny on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDan: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvResult.isEditable = false
    }

    @IBAction func btnDan(_ sender: UIButton) {
        // 기존 작업 삭제
        tvResult.text.removeAll()
        
        // Optional 정리
        guard let strDan = tfDan.text else { return }
        
        // Space와 Empty 정리
        let checkDan = strDan.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !checkDan.isEmpty{
            let numDan = Int(checkDan)!
            for i in 1...9{
                let tempResult = "\(numDan) X \(i) = \(numDan * i) \n"
                tvResult.text += tempResult
            }
        }
    }
    
}// ViewController

