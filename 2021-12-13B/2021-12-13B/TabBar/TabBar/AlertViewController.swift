//
//  ViewController.swift
//  Alert
//
//  Created by Kenny on 2021/01/12.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var lampImage: UIImageView!
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRemove = UIImage(named: "lamp_remove.png")
    var isLampOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        lampImage.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn == true{
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태 입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
            // present메소드를 이용하면 기존 뷰 컨트롤러위에 새로운 뷰 컨트롤러를 덮어 씌워 참조하는 관계가 형성.
            // present가 없으면 Alert Message 창이 뜨지 않는다.
            
        }else{
            lampImage.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn == true{
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            // Closure를 이용한 실행
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in
                self.lampImage.image = self.imgOff
                self.isLampOn=false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
            
            
        }else{
            let lampOffAlert = UIAlertController(title: "경고", message: "현재 Off 상태 입니다.", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네, 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            lampOffAlert.addAction(offAction)
            present(lampOffAlert, animated: true, completion: nil)

        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거?", message: "램프를 제거 할까요?", preferredStyle: UIAlertController.Style.alert
        )
        
        let offAction = UIAlertAction(title: "아니오, 끕니다!", style: UIAlertAction.Style.default, handler: {ACTION in
            self.lampImage.image = self.imgOff
            self.isLampOn=false
        })
        
        let onAction = UIAlertAction(title: "아니오, 켭니다!", style: UIAlertAction.Style.default, handler: {ACTION in
            self.lampImage.image = self.imgOn
            self.isLampOn=true
        })
        
        let removeAction = UIAlertAction(title: "네, 제거 합니다!", style: UIAlertAction.Style.default, handler: {ACTION in
            self.lampImage.image = self.imgRemove
            self.isLampOn=false
        })
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
    
    
} // ------

