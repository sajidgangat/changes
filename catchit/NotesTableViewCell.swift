//
//  NotesTableViewCell.swift
//  catchit
//
//  Created by Sagar patel on 2017-06-24.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class NotesTableViewCell: UITableViewCell {

    @IBOutlet weak var notes: UILabel!
    @IBOutlet weak var subject: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
