//
//  ViewController.swift
//  NotificationProject
//
//  Created by Gushchin Ilya on 30.03.2021.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
      
        let content = UNMutableNotificationContent()
        content.title = "Allo che tam s dengami?"
        content.body = "Tu komy zvonish?"
        
        
        let date = Date().addingTimeInterval(7)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
    }
}

