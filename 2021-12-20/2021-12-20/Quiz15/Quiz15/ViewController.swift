//
//  ViewController.swift
//  Quiz15
//
//  Created by Kenny on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRed = UIImage(named: "lamp_red.png")
    
    var isOn = true
    var isYellow = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgOn
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        editViewController.isOn = isOn
        editViewController.isYellow = isYellow
        editViewController.delegate = self
    }

} // ViewController


extension ViewController: EditDelegate{
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool, isYellow: Bool) {
        switch isOn{
        case true:
            switch isYellow{
            case true:
                imgView.image = imgOn
                self.isOn = true
                self.isYellow = true
            case false:
                imgView.image = imgRed
                self.isOn = true
                self.isYellow = false
            }
        case false:
            switch isYellow{
            case true:
                imgView.image = imgOff
                self.isOn = false
                self.isYellow = true
            case false:
                imgView.image = imgOff
                self.isOn = false
                self.isYellow = false
            }
        }
    }
    
    
}
