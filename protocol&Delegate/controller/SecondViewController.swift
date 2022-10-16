//
//  SecondViewController.swift
//  protocol&Delegate
//
//  Created by sweta makuwala on 26/01/22.
//

import UIKit
typealias  v2CB = (_ infoToReturn: String) -> ()
class SecondViewController: UIViewController {
  
    
    @IBOutlet weak var textField: UITextField!
    var cmpletionBlock:v2CB?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        if let data = textField.text {
            guard let cb = cmpletionBlock else { return}
            cb(data)
        }
        dismiss(animated: true, completion: nil)
        
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
