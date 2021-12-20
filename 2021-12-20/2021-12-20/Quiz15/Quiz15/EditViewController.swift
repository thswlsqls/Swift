//
//  EditViewController.swift
//  Quiz15
//
//  Created by Kenny on 2021/12/18.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var swOnOff: UISwitch!
    @IBOutlet weak var swColor: UISwitch!
    
    var isOn = false
    var isYellow = false
    var delegate: EditDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        swOnOff.isOn = isOn
        if isOn == true{
            lblOnOff.text = "On"
        }else{
            lblOnOff.text = "Off"
        }
        
        swColor.isOn = isYellow
        if isYellow == true{
            lblColor.text = "Yellow"
        }else{
            lblColor.text = "red"
        }
    }
    

    @IBAction func btnDone(_ sender: UIButton) {
        delegate?.didImageOnOffDone(self, isOn: isOn, isYellow: isYellow)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblOnOff.text = "On"
        }else{
            isOn = false
            lblOnOff.text = "Off"
        }
    }
    
    @IBAction func swColorChange(_ sender: UISwitch) {
        if sender.isOn{
            isYellow = true
            lblColor.text = "Yellow"
        }else{
            isYellow = false
            lblColor.text = "Red"
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
