//
//  ViewController.swift
//  Quiz061
//
//  Created by Kenny on 2021/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgViewFront: UIImageView!
    @IBOutlet weak var imgViewRear: UIImageView!
    
    var numFrontImage = 0
    var numRearImage = 1
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayImage()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numFrontImage -= 1
        numRearImage -= 1
        
        if numFrontImage < 0{
            numFrontImage = imageName.count - 1
        }
        
        if numRearImage < 0{
            numRearImage = imageName.count - 1
        }
        
        displayImage()
        
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numFrontImage += 1
        numRearImage += 1
        
        if numFrontImage >= imageName.count{
            numFrontImage = 0
        }
        
        if numRearImage >= imageName.count{
            numRearImage = 0
        }
        
        displayImage()
        
    }
    
    func displayImage(){
        imgTitle.text = imageName[numFrontImage]
        imgViewFront.image = UIImage(named: imageName[numFrontImage])
        imgViewRear.image = UIImage(named: imageName[numRearImage])
    }
    
} // ViewController

