//
//  ViewController.swift
//  Calculator
//
//  Created by Ольга Ботанова on 16.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        result.text = result.text! + String(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

