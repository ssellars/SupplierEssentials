//
//  EventTableViewCell.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 1/3/17.
//  Copyright © 2017 Sean Sellars. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var venue: UILabel!
    @IBOutlet weak var showsCount: UILabel!
    @IBOutlet weak var dates: UILabel!
    @IBOutlet weak var revenue: UILabel!
    @IBOutlet weak var ticketsRemaining: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
