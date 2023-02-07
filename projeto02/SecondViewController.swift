//
//  SecondViewController.swift
//  projeto02
//
//  Created by Igor Santana on 11/07/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func next(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdScreen"{
            let controller = segue.destination as?
            ThirdViewController
            controller?.delegate = self 
            controller?.modalPresentationStyle = .fullScreen
//            controller?.receivedValue = "chegou"
        }
    }
}

extension SecondViewController: ThirdViewControllerDelegate {
    func notification(msg: String) {
        print(msg)
    }
}
