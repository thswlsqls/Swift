//
//  ViewController.swift
//  Quiz10
//
//  Created by Kenny on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblAlarmTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime: String?
    var alertFlag = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func pickerTime(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblAlarmTime.text = "선택시간 :" + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "a hh:mm"
        alarmTime = formatter.string(from: datePickerView.date)

    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 :" + formatter.string(from: date as Date)
        
        formatter.dateFormat = "a hh:mm"
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime {
            if !alertFlag{
                let alaramAlert = UIAlertController(title: "알림", message: "설정된 시간 입니다!!!", preferredStyle: .alert)
                let onAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
                
                alaramAlert.addAction(onAction)
                present(alaramAlert, animated: true, completion: nil)
                alertFlag = true
            }
        }else{
            alertFlag = false
        }
        
    }
    
    
}

