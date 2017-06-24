//
//  filenote.swift
//  catchit
//
//  Created by Paul on 2017-06-22.
//  Copyright © 2017 Paul. All rights reserved.
//

import Foundation
import UIKit

class note{
    
    var user_id: String
    var subject: String
    var note: String
    var date:String
    var id: String
    
    init(user_id: String, subject: String, note: String, date: String, id: String) {
        // Initialize stored properties.
        self.user_id = user_id
        self.subject = subject
        self.note = note
        self.date = date
        self.id = id
    }
    
    init() {
        // Initialize stored properties.
        self.user_id = ""
        self.subject = ""
        self.note = ""
        self.date = ""
        self.id = ""
    }
}
