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
        startButton.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        startButton.layer.cornerRadius = 18
        startButton.layer.borderWidth = 4
        startButton.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        return startButton
    }()
    
    lazy var timerTitleTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.backgroundColor = .lightText
        textField.font = UIFont.boldSystemFont(ofSize: 16)
        textField.adjustsFontSizeToFitWidth = false
        textField.placeholder = "Enter Timer Title"
        textField.delegate = self
        return textField
    }()
    
    private func titleTextFieldConstraints() {
        timerTitleTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(timerTitleTextField)
    
        NSLayoutConstraint.activate([
        timerTitleTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        timerTitleTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 400), timerTitleTextField.widthAnchor.constraint(equalToConstant: 300),
        timerTitleTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func startButtonConstraints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(startButton)
    
        NSLayoutConstraint.activate([
        startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        startButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 500), startButton.widthAnchor.constraint(equalToConstant: 60),
        startButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.view.addSubview(setTimerView)
        titleTextFieldConstraints()
        startButtonConstraints()

        // Do any additional setup after loading the view.
    }
}

extension TimerViewController: UITextViewDelegate, UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
