//
//  ViewController.swift
//  Summator
//
//  Created by Ольга Ботанова on 24.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var field: UITextField!

    func sum(_ numbers: Int...) -> Int {
        numbers.reduce(0) {$0 + $1}
    }
    
    
    @IBAction func getSum(_ sender: UIButton) {
        guard
            let text = field.text,
            text.count > 0 else {
            label.textColor = .red
            return
        }
        
        let array = text.components(separatedBy: " ").compactMap { Int($0) }
        let result = array.reduce(0, +)
        
        ResultManager.shared.result = Result(sum: result)
        
        performSegue(withIdentifier: "sumController", sender: sender)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.layer.borderWidth = 3.0
        field.layer.borderColor = UIColor.gray.cgColor
        label.text = "Введите ряд чисел"
        // Do any additional setup after loading the view.
    }
}

