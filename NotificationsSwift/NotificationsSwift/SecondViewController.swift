//
//  SecondViewController.swift
//  NotificationsSwift
//
//  Created by Field Employee on 4/8/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    static let notificationName = Notification.Name(rawValue: "myNotificationName")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onLightPressed(_ sender: Any) {
        NotificationCenter.default.post(name: SecondViewController.notificationName, object: nil, userInfo: ["background": UIColor.white])
    }
    
    @IBAction func onDarkPressed(_ sender: Any) {
        NotificationCenter.default.post(name: SecondViewController.notificationName, object: nil, userInfo: ["background": UIColor.darkGray])
    }
    
}
