//
//  NotificationDetailViewController
//  Supplier Essentials
//
//  Created by Sean Sellars on 12/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class NotificationDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var notification:EventNotification!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(notification)
        
        titleLabel.text = notification.title
        descriptionTextView.text = notification.description
    }
    
    
    
}
