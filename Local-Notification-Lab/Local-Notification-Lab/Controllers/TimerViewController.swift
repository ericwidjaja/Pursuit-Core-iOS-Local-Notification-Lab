//
//  TimerViewController.swift
//  Local-Notification-Lab
//
//  Created by Eric Widjaja on 11/1/19.
//  Copyright © 2019 Eric W. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    
    lazy var setTimerView : UIDatePicker = {
        //Create DatePicker
        let setTimer =  UIDatePicker()
        //Set DatePicker properties
        setTimer.frame = CGRect(x: 7, y: 200, width: 400, height: 200)
        setTimer.timeZone = NSTimeZone.local
        setTimer.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return setTimer
        

    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //add DatePicker to the view
        self.view.addSubview(setTimerView)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
