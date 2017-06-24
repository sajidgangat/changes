//
//  ProspectTableViewController.swift
//  catchit
//
//  Created by Paul on 2017-06-23.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class ProspectTableViewController: UITableViewController {
    @IBOutlet weak var labelEmployeename: UILabel!
    
    @IBOutlet weak var labelcity: UILabel!
    @IBOutlet weak var labelCompanyname: UILabel!
    
    var Employee = ["SAM", "Jony"]

        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Employee.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let Employeename = Employee[indexPath.row]
        labelEmployeename.text = Employeename
      //  cell.detailTextLabel?.text = "Delicious!"
       //cell.imageView?.image = UIImage(named: fruitName)
        
        return cell
    }
    
}
