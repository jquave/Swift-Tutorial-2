//
//  RootViewController.swift
//  SwiftData
//
//  Created by Jameson Quave on 6/13/14.
//  Copyright (c) 2014 JQ Software LLC. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITextFieldDelegate {

    var textField = UITextField()
    var textLabel = UILabel()
    var button = UIButton()
    var userName = ""

    var buttonFinalFrame: CGRect?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createViews()
    }
    
    func createViews() {
        
        var margin = CGPointMake(15, 5)
        
        var frame = CGRectMake(margin.x, 0, 320-margin.x*2, 44)
        textLabel.frame = frame
        
        textLabel.text = "Hello World!"
        textLabel.textAlignment = NSTextAlignment.Center
        textLabel.center = view.center
        textLabel.alpha = 0
        frame = textLabel.frame
        
        // Previously we centered the frame
        // We're going to add 3 44-point height fields, so move it up by that much
        // This leaves the controls on the top half of the screen
        frame.origin.y -= (44+margin.y)*3
        textLabel.frame = frame
        view.addSubview(textLabel)
        
        
        frame = textLabel.frame
        frame.origin.y += 44 + margin.y
        textField.frame = frame
        
        textField.placeholder = "Name"
        textField.borderStyle = UITextBorderStyle.Line
        textField.backgroundColor = UIColor(red: 1.0, green: 0.9, blue: 0.8, alpha: 1)
        view.addSubview(textField)
        textField.delegate = self
        
        
        frame.origin.y += 44 + margin.y
        button = UIButton(frame: frame)
        button.setTitle("Okay", forState: UIControlState.Normal)
        buttonFinalFrame = frame
        frame.origin.y += UIScreen.mainScreen().bounds.height
        button.frame = frame
        view.addSubview(button)
        
    
    }

    func showResult() {
        UIView.animateWithDuration(0.5, animations: {
            self.button.frame = self.buttonFinalFrame!
            self.textLabel.alpha = 1
        })
        
        self.title = userName
        navigationController.navigationBarHidden = false
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        userName = textField.text
        textLabel.text = "Hello \(userName)!"
        showResult()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
