//
//  ViewController.swift
//  Quiz08
//
//  Created by Kenny on 2021/12/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var imageName: [String] = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0
    let interval = 3.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgTitle.text = imageName[numImage]
        imgView.image = UIImage(named: imageName[numImage])
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @objc func updateTime(){
        numImage += 1
        
        if numImage >= imageName.count {
            numImage = 0
        }
        
        imgTitle.text = imageName[numImage]
        imgView.image = UIImage(named: imageName[numImage])

        
    }

}

