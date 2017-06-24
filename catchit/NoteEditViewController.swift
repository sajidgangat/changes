//
//  NoteEditViewController.swift
//  catchit
//
//  Created by Paul on 2017-06-23.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class NoteEditViewController: UIViewController {

    @IBOutlet weak var textviewNote: UITextView!
    @IBOutlet weak var Textboxsubject: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textviewNote.text = "there is a meeting on the 25th of july at 2 PM near Square One"
        Textboxsubject.text = "Meeting"
        // Do any additional setup after loading the view.
    }

   
}
