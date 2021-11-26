//
//  ViewController.swift
//  Quiz06
//
//  Created by Kenny on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var numImage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayImage()
//        displayImage2(number: numImage)
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0{
            numImage = imageName.count - 1
        }
        displayImage()
//        displayImage2(number: numImage)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        displayImage()
//        displayImage2(number: numImage)
    }
    
    // Image와 Title을 출력하는 Function
    func displayImage(){
        imgTitle.text = imageName[numImage]
        imgView.image = UIImage(named: imageName[numImage])
    }
    
    func displayImage2(number: Int){
        imgTitle.text = imageName[number]
        imgView.image = UIImage(named: imageName[number])
    }
    
}// ViewController

