//
//  ApiService.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 2/15/17.
//  Copyright © 2017 Sean Sellars. All rights reserved.
//

import Foundation


public class ApiService {
    
    let notifications:[EventNotification] =  [EventNotification(id: 1, eventId: 111, title: "A perfect promotion for you", description: "Blah Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", timestamp: Date().timeIntervalSince1970),
        EventNotification(id: 2, eventId: 222, title: "50% down, 50% to go", description: "Blah Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", timestamp: 1496439504),
        EventNotification(id: 3, eventId: 333, title: "50% down, 50% to go", description: "Blah Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", timestamp: 1496449504),
        EventNotification(id: 4, eventId: 333, title: "Remittance Processed!", description: "Blah Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", timestamp: 1496482704)]
    
    let events:[Event] = [Event(id: 111, title: "Wicked", venue: "Pantages", showsRemaining: 12, dateRange: "Aug 8- 30", revenue: 3900, ticketsRemaining: 89, eventImage: #imageLiteral(resourceName: "Amelie")),
                          Event(id: 222, title: "Amelie", venue: "Ahmanson", showsRemaining: 31, dateRange: "Aug 20 - Sept 15", revenue: 4750, ticketsRemaining: 101, eventImage: #imageLiteral(resourceName: "Amelie")),
                          Event(id: 333, title: "Riverdance", venue: "My House", showsRemaining: 1, dateRange: "Aug 1", revenue: 11.00, ticketsRemaining: 3, eventImage: #imageLiteral(resourceName: "Amelie"))]
	
    
    
    let users:[User] = [User(id: 1, emailAddress: "ssellars@goldstar.com", password: "pass")]
    
    
    
    //
    //  public func
    //
    //
    public func getData() -> Array<Event> {
        return events
    }
    
    
    
    //
    //  public func
    //
        public func getEvent(eventId:Int) -> Event {
        let event = events.filter { $0.id == eventId }
        return event.first!
    }
    
    
    
    //
    //  public func
    //
    //
    public func getNotificationData(eventId:Int) -> Array<EventNotification> {
        if eventId == 0 {
            return notifications
        }
        else {
            let eventNotifications = notifications.filter { $0.eventId == eventId }
            return eventNotifications
        }
    }
    
    
    
    //
    //  public func
    //
    //
    public func login(emailAddress:String, password:String) -> String {
        
        if let user = users.first(where: { $0.emailAddress == emailAddress }){
        
            if user.password == password {
                return "Success"
            }
            else {
                return "Invalid Password for User"
            }
        }
        else {
            return "Invalid Email Address"
        }
    }
}
