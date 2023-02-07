//
//  ViewController.swift
//  projeto02
//
//  Created by Igor Santana on 11/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
//        label.text = "Pressione o botão abaixo"
    
    performSegue(withIdentifier: "second", sender: nil)
    
}
    
    @IBAction func unwindToFirst(segue : UIStoryboardSegue){
        
    }

}
