//
//  ViewController.swift
//  protocol&Delegate
//
//  Created by sweta makuwala on 26/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let secondVc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        secondVc.cmpletionBlock = {[weak self] dataReturned in
            self?.label.text = dataReturned
        }
        present(secondVc, animated: true, completion: nil)
        
    }
    
}

