//
//  ViewController.swift
//  tableview-autolayout
//
//  Created by Tommy Chheng on 2/18/16.
//  Copyright © 2016 Tommy Chheng. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UITableViewController {

    let imageUrls = [
        "https://41.media.tumblr.com/fb48445ea71e3cef9dbd9043aaf01f3c/tumblr_o2i8a4x2IL1rx984fo1_500.jpg",
        "https://41.media.tumblr.com/91f289f1f761448d27f342ee24a97c82/tumblr_o25sajuaSA1tfl4tvo1_500.jpg",
        "https://41.media.tumblr.com/3b48b8bdbcc20f42e71503bdb6c00d56/tumblr_nzn4m5npRX1ql2a4yo1_500.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.separatorInset = UIEdgeInsetsZero
        self.tableView.estimatedRowHeight = 230
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.registerNib(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageUrls.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! Cell
        let url = imageUrls[indexPath.row]
        cell.imageUrl = url
        
        return cell
    }
}

