//
//  ViewController.swift
//  Quiz09
//
//  Created by Kenny on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDan: UILabel!
    @IBOutlet weak var pickerDan: UIPickerView!
    @IBOutlet weak var tvResult: UITextView!
    
//    var dan:[Int] = [2,3,4,5,6,7,8,9]
    
    // 연속된 숫자 배열 선언 방법
    var dan = [Int](2...9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblDan.text = "\(dan[0])단"
        calcDan(dan: dan[0])
        
        pickerDan.dataSource = self
        pickerDan.delegate = self
    }

    func calcDan(dan: Int){
        tvResult.text = ""
        for i in 1...9{
            tvResult.text += "\(dan) X \(i) = \(dan * i) \n"
        }
    }
    

}// ViewController

extension ViewController: UIPickerViewDataSource{
    // PickerView column갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // PickerView row갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dan.count
    }
}

extension ViewController: UIPickerViewDelegate{
    // Title 정의
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(dan[row])단"
    }
    
    // pickerview에서 선택했을 경우
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblDan.text = "\(dan[row])단"
        calcDan(dan: dan[row])
    }
}
