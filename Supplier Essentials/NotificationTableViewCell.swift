//
//  NotificationTableViewCell.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 1/3/17.
//  Copyright © 2017 Sean Sellars. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    var cellRow = Int()
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
}
