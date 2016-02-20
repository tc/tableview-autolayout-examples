//
//  Cell.swift
//  tableview-autolayout
//
//  Created by Tommy Chheng on 2/19/16.
//  Copyright © 2016 Tommy Chheng. All rights reserved.
//

import Foundation
import UIKit

class Cell: UITableViewCell {
    @IBOutlet weak var mainImageView: UIImageView!
    
    var imageUrl:String? {
        didSet {
            mainImageView.kf_setImageWithURL(NSURL(string: imageUrl!)!, placeholderImage: nil)
        }
    }
    
}