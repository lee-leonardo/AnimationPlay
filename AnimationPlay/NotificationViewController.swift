//
//  NotificationViewController.swift
//  AnimationPlay
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Only 64 local notifications at most
        
        
        var notification = UILocalNotification()
        notification.timeZone = NSTimeZone.defaultTimeZone()
        
//      Testing with the time property and alertss
        var dateTime = NSDate.date()
        notification.fireDate = dateTime
        
//      Way to store data.
        //notification.userInfo = [String:String]()
        //notification.alertLaunchImage
        notification.alertAction = "Alert!"
        notification.alertBody = "Test"
        
//      Regions related code
        //notification.regionTriggersOnce = true

//      Send the notification to
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        //Notes on what objects we will be dealing with.
        //An array of location of MKMapItems -> CLLocation
        //These CLLocations are going to be used to set the regions that we will be using.
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
}
