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
    

    @objc func cancelButtonPressed() {
        self.setTimerView.datePickerMode = .countDownTimer
    }
    
    @objc func startButtonPressed() {
        
        
    }
    lazy var startButton : UIButton = {
        //Create Button
        let startButton = UIButton()
        //set Button Properties
        startButton.frame = CGRect(x: 177, y: 500, width: 60, height: 60)
        startButton.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        startButton.layer.cornerRadius = 15
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        return startButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //add DatePicker to the view
        self.view.addSubview(setTimerView)
        self.view.addSubview(startButton)

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
