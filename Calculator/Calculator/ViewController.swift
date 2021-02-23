//
//  ViewController.swift
//  Calculator
//
//  Created by Ольга Ботанова on 16.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen: Double = 0;
    var firstNum: Double = 0;
    var operation: Int = 0;
    var mathSign: Bool = false;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func digit(_ sender: UIButton) {
        if mathSign == true {
            label.text = String(sender.tag)
            mathSign = false
        }
        else {
            label.text = label.text! + String(sender.tag)
        }
        numberFromScreen = Double(label.text!)!
        sender.tapAnimation()
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(label.text!)!
            
            if sender.tag == 11 {
                label.text = "/"
            }
            else if sender.tag == 12 {
                label.text = "x"
            }
            else if sender.tag == 13 {
                label.text = "-"
            }
            else if sender.tag == 14 {
                label.text = "+"
            }
            operation = sender.tag
            mathSign = true;
        }
        else if sender.tag == 15 {
            if operation == 11 {
                label.text = String(firstNum / numberFromScreen)
            }
            else if operation == 12 {
                label.text = String(firstNum * numberFromScreen)
            }
            else if operation == 13 {
                label.text = String(firstNum - numberFromScreen)
            }
            else if operation == 14 {
                label.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 10 {
            label.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

