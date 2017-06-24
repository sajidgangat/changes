//
//  BrowserController.swift
//  catchit
//
//  Created by Paul on 2017-06-23.
//  Copyright © 2017 Paul. All rights reserved.
//

import UIKit

class BrowserController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://www.google.com")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }    }

    

}
