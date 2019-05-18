//
//  TableViewController.swift
//  MemeMe
//
//  Created by Apple on 18/05/2019.
//  Copyright © 2019 RR Inc. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let memeCell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell") as! TableViewCell
        return memeCell
    }
}
