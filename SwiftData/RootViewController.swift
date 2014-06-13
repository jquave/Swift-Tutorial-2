//
//  RootViewController.swift
//  SwiftData
//
//  Created by Jameson Quave on 6/13/14.
//  Copyright (c) 2014 JQ Software LLC. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITextFieldDelegate {

    var textField: UITextField?
    var textLabel: UILabel?
    
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
        let helloWorldLabel = UILabel(frame: frame)
        textLabel = helloWorldLabel
        
        helloWorldLabel.text = "Hello World!"
        helloWorldLabel.textAlignment = NSTextAlignment.Center
        helloWorldLabel.center = view.center
        frame = helloWorldLabel.frame
        
        // Previously we centered the frame
        // We're going to add 3 44-point height fields, so move it up by that much
        // This leaves the controls on the top half of the screen
        frame.origin.y -= (44+margin.y)*3
        helloWorldLabel.frame = frame
        view.addSubview(helloWorldLabel)
        
        
        
        frame = helloWorldLabel.frame
        frame.origin.y += 44 + margin.y
        let nameField = UITextField(frame: frame)
        textField = nameField
        
        nameField.placeholder = "Name"
        nameField.borderStyle = UITextBorderStyle.Line
        view.addSubview(nameField)
        nameField.delegate = self
        
        
        frame.origin.y += 44 + margin.y
        var okayButton = UIButton(frame: frame)
        okayButton.setTitle("Okay", forState: UIControlState.Normal)
        view.addSubview(okayButton)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
