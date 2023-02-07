//
//  ThirdViewController.swift
//  projeto02
//
//  Created by Igor Santana on 11/07/22.
//

import UIKit
protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg:String)
}
class ThirdViewController: UIViewController {

    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    weak var delegate : ThirdViewControllerDelegate?
    
//    var receivedValue: String!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.notification(msg: "cheguei")

        // Do any additional setup after loading the view.
//        label.text = receivedValue

    
        
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    
  
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
        delegate?.notification(msg: "cheguei")
    }
    
    
}
