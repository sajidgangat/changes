//
//  NotesPojo.swift
//  catchit
//
//  Created by Sagar patel on 2017-06-24.
//  Copyright © 2017 Paul. All rights reserved.
//

import Foundation

class NotesPojo{
    var id: Int
    var Subject: String
    var Note: String
    var Day: String
    var Date:String
    
    init(id: Int, Subject: String, Note: String, Day: String, Date:String) {
        // Initialize stored properties.
        self.id = id
        self.Subject = Subject
        self.Note = Note
        self.Day = Day
        self.Date = Date
    }
    
    init() {
        // Initialize stored properties.
        self.id = 0
        self.Subject = ""
        self.Note = ""
        self.Day = ""
        self.Date = ""
    }
}
