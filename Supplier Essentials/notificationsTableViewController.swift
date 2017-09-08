//
//  notificationsTableViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 12/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class notificationsTableViewController: UITableViewController {

    var notifications:[EventNotification]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = true
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        notifications = ApiService().getNotificationData(eventId: 0)
        
        notifications.sort(by: { $0.timestamp > $1.timestamp })
    }
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Notification Cell", for: indexPath) as! NotificationTableViewCell
        let row = indexPath.row
        cell.cellRow = row
        cell.titleLabel.text = notifications[row].title
        cell.descriptionLabel.text = notifications[row].description
        let fuzzyTime = getFuzzyTime(timestamp: notifications[row].timestamp)
        cell.timestampLabel.text = fuzzyTime
        return cell
    }
	
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == UITableViewCellEditingStyle.delete
		{
			notifications.remove(at: indexPath.row)
			tableView.reloadData()
			
	}

		
	
	}
		
		
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Notification Details" {
            let destinationController = segue.destination as! NotificationDetailViewController
            let cell = sender as! NotificationTableViewCell
            destinationController.notification = notifications[cell.cellRow]
        }
    }
}
