//
//  ViewController.swift
//  Quiz17
//
//  Created by Kenny on 2021/12/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblComment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var comment: String
        
        if Message.fly == true{
            comment = "\n 날수 있습니다."
        }else{
            comment = "\n 날수 없습니다."
        }
        
        
        imgView.image = UIImage(named: Message.image!)
        lblComment.text = "이 동물의 이름은 \(Message.name!) 이며 분류는 \(Message.kind!) 이며 \(comment)"
        
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
