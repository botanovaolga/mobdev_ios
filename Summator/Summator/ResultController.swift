//
//  ResultController.swift
//  Summator
//
//  Created by Ольга Ботанова on 25.02.2021.
//

import UIKit

class UserController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = String(describing: ResultManager.shared.result!.resultSum)
        label.text = result
    }
}

    
