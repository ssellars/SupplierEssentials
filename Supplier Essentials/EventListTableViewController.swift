//
//  EventListTableViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 11/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit


class EventListTableViewController: UITableViewController {

    
    var events = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Event Listings"
        self.events = ApiService().getData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath)
            as! EventTableViewCell
        let event = events[indexPath.row]
        
        cell.title.text = event.title
        cell.venue.text = event.venue
        cell.showsCount.text = String(event.showsRemaining)
        cell.dates.text = event.dateRange
        cell.revenue.text = String(event.revenue)
        cell.ticketsRemaining.text = String(event.ticketsRemaining)
        cell.eventImage.image = event.eventImage
        
       return cell
    }

    


    
    // MARK: - Navigation

       //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let destination = segue.destination
      //  eventCell.title
        
     //   ApiService.getData(title)
    }
    
        
        
        
        // Get the new view controller using segue.destinationViewController.eventDetailViewController
    
        // Pass the selected object to the new view controller.

    


















