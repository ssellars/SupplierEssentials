//
//  eventDetailViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 12/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class eventDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var eventId = Int()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var revenueLabel: UILabel!
    @IBOutlet weak var ticketsRemainingLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var event:Event!
    var notifications:[EventNotification]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.event = ApiService().getEvent(eventId: eventId)
        self.notifications = ApiService().getNotificationData(eventId: eventId)
        
        print("\(event)")
        
        imageView.image = event.eventImage
        titleLabel.text = event.title
        locationLabel.text = event.venue
        
        var noun = "Dates"
        if event.showsRemaining == 1 {
            noun = "Date"
        }
        
        dateLabel.text = "\(event.showsRemaining) \(noun): \(event.dateRange)"
        revenueLabel.text = "\(event.revenue)"
        ticketsRemainingLabel.text = "\(event.ticketsRemaining)"
        
        
        tableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notifications?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Notification Cell", for: indexPath) as! NotificationTableViewCell
        let row = indexPath.row
        cell.cellRow = row
        cell.titleLabel.text = notifications[row].title
        cell.descriptionLabel.text = notifications[row].description
        let fuzzyTime = getFuzzyTime(timestamp: notifications[row].timestamp)
        cell.timestampLabel.text = fuzzyTime
        return cell
    }
    
    
    //
    // Function :
    //
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Notification Details" {
            let destinationController = segue.destination as! NotificationDetailViewController
            let cell = sender as! NotificationTableViewCell
            destinationController.notification = notifications[cell.cellRow]
        }
    }
}
