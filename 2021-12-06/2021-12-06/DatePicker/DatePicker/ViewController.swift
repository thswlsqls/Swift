//
//  ViewController.swift
//  DatePicker
//
//  Created by Kenny on 2021/11/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var alarmTime: String?
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm" // 년도-월-일 요일 (오전/오후) 12시간:분:초 / 24시간 : HH
        lblPickerTime.text = "선택 시간 : \(formatter.string(from: datePickerView.date))"
        
        formatter.dateFormat = "a hh:mm"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    // Async Task로 1초당 1번씩 구동
    @objc func updateTime(){
        count += 1
        
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재 시간 : \(formatter.string(from: date as Date))"
        
        formatter.dateFormat = "a hh:mm"
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime{
            if count % 2 == 0{
                view.backgroundColor=UIColor.red
            }else{
                view.backgroundColor=UIColor.blue
            }
        }else{
            view.backgroundColor = UIColor.white
        }
    }
    
}// ViewController

