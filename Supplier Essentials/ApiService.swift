//
//  ApiService.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 2/15/17.
//  Copyright © 2017 Sean Sellars. All rights reserved.
//

import Foundation


public class ApiService {
    
    public func getData() -> Array<Event> {
        return [Event(title: "Wicked", venue: "Pantages", showsRemaining: 12, dateRange: "Aug 8- 30", revenue: 3900, ticketsRemaining: 89, eventImage: #imageLiteral(resourceName: "Amelie")), Event(title: "Amelie", venue: "Ahmanson", showsRemaining: 31, dateRange: "Aug 20 - Sept 15", revenue: 4750, ticketsRemaining: 101, eventImage: #imageLiteral(resourceName: "Amelie")), Event(title: "Riverdance", venue: "My House", showsRemaining: 1, dateRange: "Aug 1", revenue: 11.00, ticketsRemaining: 3, eventImage: #imageLiteral(resourceName: "Amelie"))]
    }
}
