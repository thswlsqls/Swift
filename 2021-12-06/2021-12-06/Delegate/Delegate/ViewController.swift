//
//  ViewController.swift
//  Delegate
//
//  Created by Kenny on 2021/12/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text?.removeAll()
        tfInput.delegate = self // *****
    }

    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text = tfInput.text
    }
    
} // ViewController

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = tfInput.text
        return true
    }
}
