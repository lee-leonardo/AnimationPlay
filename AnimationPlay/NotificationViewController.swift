//
//  NotificationViewController.swift
//  AnimationPlay
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
    
    var queue = NSOperationQueue()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //Look into Visit Monitoring
    @IBAction func addNotificationToView(sender: AnyObject) {
        queue.addOperationWithBlock { () -> Void in
            var notification = UILocalNotification()
            notification.soundName = UILocalNotificationDefaultSoundName
            //notification.applicationIconBadgeNumber
            notification.timeZone = NSTimeZone.defaultTimeZone()
            
//          Testing with the time property and alertss
            //var dateTime = NSDate.date()
            var dateComponents = NSDateComponents()
            dateComponents.second = 10
            var dateTime = NSCalendar.currentCalendar().dateByAddingComponents(dateComponents, toDate: NSDate.date(), options: nil)
            notification.fireDate = dateTime
            
//          Way to store data.
            //notification.userInfo = [String:String]()
            //notification.alertLaunchImage
            notification.alertAction = "Alert!"
            notification.alertBody = "Fired at \(dateTime)"
            
//          Regions related code
            //notification.regionTriggersOnce = true
            
//          Send the notification to
            UIApplication.sharedApplication().scheduleLocalNotification(notification)
            
//          Notes on what objects we will be dealing with.
            //An array of location of MKMapItems -> CLLocation
            //These CLLocations are going to be used to set the regions that we will be using.
        }
    }
    
    
}
