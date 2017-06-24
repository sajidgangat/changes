//
//  DisplayNotesTableviewcontroller.swift
//  catchit
//
//  Created by Sagar patel on 2017-06-24.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class DisplayNotesTableviewcontroller: UITableViewController {
    
    var NotesList = [NotesPojo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        LoadDataFromNote()
        
    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return NotesList.count
    }

    
    func LoadDataFromNote()
    {
        
        // url of the API
        let myUrl = URL(string: "https://breezemaxlabs.com/RestAPI/v1/notes");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=nik@breeze.com"; // parameter passsed
        
        request.httpBody = postString.data(using: .utf8);
        
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                
                let ResponseJsonArray = (json?["Notes"] as! NSArray) as Array
                
                //print("I got \(twDataArray)")
                
                for eachJsonObject in ResponseJsonArray
                {
                    let eachPojoBoj = NotesPojo()
                    if let Id = (eachJsonObject["Id"]!)
                    {
                        eachPojoBoj.id = Id as! Int
                    }
                    if let Subject = (eachJsonObject["Subject"]!)
                    {
                        eachPojoBoj.Subject = Subject as! String
                    }
                    if let Note = (eachJsonObject["Note"]!)
                    {
                        eachPojoBoj.Note = Note as! String
                    }
                    if let Date = (eachJsonObject["Date"]!)
                    {
                        eachPojoBoj.Date = Date as! String
                    }
                    if let Day = (eachJsonObject["Day"]!)
                    {
                        eachPojoBoj.Day = Day as! String
                    }
                    self.NotesList.append(eachPojoBoj)
                    
                }
                
                
            } catch
            {
                print(error)
            }
            
            for tt in self.NotesList
            {
                print(tt.Subject)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        
        task.resume()
      
        
        
    }
    

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotesTableViewCell

        cell.subject.text = self.NotesList[(indexPath as NSIndexPath).row].Subject
        cell.notes.text = self.NotesList[(indexPath as NSIndexPath).row].Note
        
        //cell.agelabel.text=patient.lastName
       // cell.addresslabel.text=patient.occupation
       // cell.departmentlabel.text=patient.bloodType
        
        
        // Configure the cell...
        return cell
    }

    
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
