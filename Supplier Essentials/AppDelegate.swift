//
//  AppDelegate.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 11/7/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

let userDefaults = UserDefaults.standard

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


//
// Function : showSimpleAlert
//
//
func showSimpleAlert(title: String, message: String) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    return alert
}


func getFuzzyTime(timestamp: Double) -> String {
    let sentTime = Calendar.current.dateComponents([.day, .hour, .minute, .second], from: Date(timeIntervalSince1970: timestamp), to: Date())
    let sentMins = sentTime.minute ?? 0
    let sentHours = sentTime.hour ?? 0
    let sentDays = sentTime.day ?? 0
    
    var fuzzyTime = ""
    var noun = ""
    if sentDays > 0 {
        noun = "Days"
        if sentDays == 1 { noun = "Day"}
        fuzzyTime = "\(sentDays) \(noun) Ago"
    }
    else if sentHours > 0 {
        noun = "Hours"
        if sentHours == 1 { noun = "Hour"}
        fuzzyTime = "\(sentHours) \(noun) Ago"
    }
    else if sentMins < 5 {
        fuzzyTime = "Just Now"
    }
    else {
        fuzzyTime = "\(sentMins) Minutes Ago"
    }
    return fuzzyTime
	
}
