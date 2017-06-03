//
//  Event.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 2/15/17.
//  Copyright © 2017 Sean Sellars. All rights reserved.
//

import Foundation
import UIKit


public struct Event {
    var id: Int
    var title: String
    var venue: String
    var showsRemaining: Int
    var dateRange: String
    var revenue: Float
    var ticketsRemaining: Int
    var eventImage: UIImage
}

public struct EventNotification {
    var id: Int
    var eventId: Int
    var title: String
    var description: String
    var timestamp: Double
}

public struct User {
    var id: Int
    var emailAddress: String
    var password: String
}
