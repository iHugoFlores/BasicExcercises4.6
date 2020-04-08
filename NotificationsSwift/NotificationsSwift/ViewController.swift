//
//  ViewController.swift
//  NotificationsSwift
//
//  Created by Field Employee on 4/8/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(onSecondViewNotification), name: SecondViewController.notificationName, object: nil)
    }
    
    @objc func onSecondViewNotification(notification:Notification) {
        print("Notification action works")
        view.backgroundColor = notification.userInfo!["background"] as! UIColor
    }


}

