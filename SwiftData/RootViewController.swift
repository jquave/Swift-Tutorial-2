//
//  RootViewController.swift
//  SwiftData
//
//  Created by Jameson Quave on 6/13/14.
//  Copyright (c) 2014 JQ Software LLC. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createViews()
    }
    
    func createViews() {
        var frame = CGRectMake(0, 0, 320, 44)
        var helloWorldLabel = UILabel(frame: frame)
        helloWorldLabel.text = "Hello World!"
        helloWorldLabel.textAlignment = NSTextAlignment.Center
        helloWorldLabel.center = view.center
        view.addSubview(helloWorldLabel)
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
