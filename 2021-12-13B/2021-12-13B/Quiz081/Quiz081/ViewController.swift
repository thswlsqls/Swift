//
//  ViewController.swift
//  Quiz081
//
//  Created by Kenny Hahn on 2021/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitleUp: UILabel!
    @IBOutlet weak var imgViewUp: UIImageView!
    @IBOutlet weak var imgTitleDown: UILabel!
    @IBOutlet weak var imgViewDown: UIImageView!
    
    var imageName = [ "flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_06.png" ]
    
    var numImageUp = 0
    var numImageDown = 0
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0 // interval을 1초로
    
    var count = 0 // 3초인 경우

    
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        imgViewUp.image = UIImage(named:imageName[0])
        imgViewDown.image = UIImage(named:imageName[0])
        
        imgTitleUp.text = imageName[0]
        imgTitleDown.text = imageName[0]
    }

    @objc func updateTime(){

        upImageTitle()
        downImageTitle()
    }
    
    func upImageTitle(){
        numImageUp = numImageUp + 1
        if (numImageUp >= imageName.count) {
            numImageUp = 0
        }
        
        imgViewUp.image = UIImage(named:imageName[numImageUp])
        imgTitleUp.text = imageName[numImageUp]

    } // upImageTitle

    func downImageTitle(){
        count+=1
        if(count % 3 == 0){
            numImageDown = numImageDown + 1
            if (numImageDown >= imageName.count) {
                numImageDown = 0
            }
            
            imgViewDown.image = UIImage(named:imageName[numImageDown])
            imgTitleDown.text = imageName[numImageDown]
        }
    } // downImageTitle
    
} // UIViewController

