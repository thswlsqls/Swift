//
//  ViewController.swift
//  Navigation01
//
//  Created by Kenny on 2021/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier == "segueButton"{
            editViewController.textWayValue = "Segue : Use Button!"
        }else{
            editViewController.textWayValue = "Segue : Use BarButton!"
        }
        
        Message.message = tfMessage.text!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tfMessage.text = Message.message
        if Message.isOn{
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
    }

}

