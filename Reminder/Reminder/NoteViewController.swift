//
//  NoteViewController.swift
//  Reminder
//
//  Created by Ольга Ботанова on 30.03.2021.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet var titleLable: UILabel!
    @IBOutlet var noteLable: UITextView!
    
    public var noteTitle: String = ""
    public var note: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = noteTitle
        noteLable.text = note
        // Do any additional setup after loading the view.
    }

}
