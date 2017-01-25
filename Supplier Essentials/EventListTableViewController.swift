//
//  EventListTableViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 11/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit


class EventListTableViewController: UITableViewController {

   struct Event {
        var title: String
        var venue: String
        var showsRemaining: Int
        var dateRange: String
        var revenue: Float
        var ticketsRemaining: Int
        var eventImage: UIImage
    }
    
    var events = [Event(title: "Wicked", venue: "Pantages", showsRemaining: 12, dateRange: "Aug 8- 30", revenue: 3900, ticketsRemaining: 89, eventImage: #imageLiteral(resourceName: "Amelie")), Event(title: "Amelie", venue: "Ahmanson", showsRemaining: 31, dateRange: "Aug 20 - Sept 15", revenue: 4750, ticketsRemaining: 101, eventImage: #imageLiteral(resourceName: "Amelie")), Event(title: "Riverdance", venue: "My House", showsRemaining: 1, dateRange: "Aug 1", revenue: 11.00, ticketsRemaining: 3, eventImage: #imageLiteral(resourceName: "Amelie"))]
    
    var jsonPayload = [String: [Event]]()
   // var event = Event(title: "Wicked", venue: "Pantages", showsRemaining: 12, dateRange: "Aug 8- 30", revenue: 3900, ticketsRemaining: 89)
    
  // let event1 = Event(title: "Amelie", venue: "Pantages", showsRemaining: 8, dateRange: "Mar 8 - 30", revenue: 3500, ticketsRemaining: 201)
  //  let imageTest:UIImage = #imageLiteral(resourceName: "Amelie")
    
    let event2 = Event(title: "Amelie", venue: "Pantages", showsRemaining: 12, dateRange: "Aug 20 - 15", revenue: 3900, ticketsRemaining: 89, eventImage: #imageLiteral(resourceName: "Amelie"))
    

    override func viewDidLoad() {
               super.viewDidLoad()
        
       self.navigationItem.title = "Event Listings"
    
    //    jsonPayload["events"] = events
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
