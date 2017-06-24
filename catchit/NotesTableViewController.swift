//
//  NotesTableViewController.swift
//  catchit
//
//  Created by Paul on 2017-06-23.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {
 var Employee = ["SAM", "Jony"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Employee.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellLabel", for: indexPath)
        return cell
    }
    
}
