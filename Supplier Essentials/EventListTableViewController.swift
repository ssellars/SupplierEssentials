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
        print("\(event)")
        
        cell.eventId = event.id
        cell.title.text = event.title
        cell.venue.text = event.venue
        cell.showsCount.text = "\(event.showsRemaining)"
        cell.dates.text = event.dateRange
        cell.revenue.text = "\(event.revenue)"
        cell.ticketsRemaining.text = "\(event.ticketsRemaining)"
        cell.eventImage.image = event.eventImage
        
       return cell
    }
    
    
    //
    // Function :
    //
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EventDetails" {
            let newView = segue.destination as! eventDetailViewController
            let cell = sender as! EventTableViewCell
            newView.eventId = cell.eventId
        }
    }

    


    
    // MARK: - Navigation

       //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let destination = segue.destination
      //  eventCell.title
        
     //   ApiService.getData(title)
    }
    

        
        
        // Get the new view controller using segue.destinationViewController.eventDetailViewController
    
        // Pass the selected object to the new view controller.

    


















