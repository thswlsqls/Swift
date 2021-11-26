//
//  ViewController.swift
//  SendMessage
//
//  Created by Kenny on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var tfMessage: UITextField!
    
    let emoji = "🧐"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        let numCheck = checkNil(str: tfMessage.text!)
        if numCheck{
            tvMessage.text += tfMessage.text! + "\n"
        }
        tfMessage.text = ""
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMessage.text! += emoji
    }
    
    func checkNil(str: String!) -> Bool{
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return false
        }else{
            return true
        }
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}// ViewController

