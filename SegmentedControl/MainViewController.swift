//
//  MainViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/21/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit
/*
    Class : MainViewController
    Funciton : Allows the upside-down view for the app
*/
class MainViewController: UITabBarController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    //
    // Code to support Upside Down orientation.
    //
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
