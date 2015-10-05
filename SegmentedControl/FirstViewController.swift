//
//  MassViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var MysegmentControl: UISegmentedControl!
   
   
    @IBOutlet var TextLabel1: UITextField!
    
    @IBOutlet var TextLabel2: UITextField!
    
    //var  TextLabel2 = 0.0
    @IBOutlet var ClearButton: UIButton!
    
    @IBOutlet var ConvertButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MysegmentControlValueChanged(sender: AnyObject) {
        
        
        
        
        
    }
   
    @IBAction func ConvertButtonPressed(sender: UIButton) {
        
        var strDouble = (TextLabel1.text as NSString).doubleValue
        var double1 = strDouble / 2.20
       // var stringFromDouble:String = String(format:"%f", 1.00)
        TextLabel2.text = toString(double1)
        
    }
    
    @IBAction func ClearButtonPressed(sender: UIButton) {
        TextLabel1.text = "0"
        TextLabel2.text = "0"
        
    }
    
   
    
    
}
