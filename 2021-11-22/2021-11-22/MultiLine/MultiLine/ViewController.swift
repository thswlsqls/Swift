//
//  ViewController.swift
//  MultiLine
//
//  Created by Kenny on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvResult.isEditable = false // read only
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        let strInput = tfInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !strInput!.isEmpty{
            tvResult.text += strInput! + "\n"
        }
        
    }
    
}// ViewController

