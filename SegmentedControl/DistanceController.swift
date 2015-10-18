//
//  DistanceConverter.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/11/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//  Converts distance from miles to kms and vice versa...

import Foundation


import UIKit

class DistanceController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var MysegmentControl: UISegmentedControl!
    
    
    
    @IBOutlet var TextLabel1: UITextField!
    
    
    
    @IBOutlet var Label1: UILabel!
    
    //var  TextLabel2 = 0.0
    @IBOutlet var ClearButton: UIButton!
    
    @IBOutlet var Label2: UILabel!
    
    
    @IBOutlet var ResultLabel: UILabel!
    
    
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
        
        
        if MysegmentControl.selectedSegmentIndex == 0
        {
            Label1.text = "Distance in Miles"
            Label2.text = "Distance in Kilometers"
            
            
            
            ResultLabel.text = "0"
            
            
        }
            
        else if MysegmentControl.selectedSegmentIndex == 1
        {
            Label1.text = "Distance in Kilometers"
            Label2.text = "Distance in Miles"
            
            
            
            ResultLabel.text = "0"
            
            
        }
        
        
    }
    
    @IBAction func ConvertButtonPressed(sender: UIButton) {
        
        var numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        if let number = numberFormatter.numberFromString(TextLabel1.text) {
            
            numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
            
            if let AmountString = numberFormatter.stringFromNumber(number) {
                //outputLabel.text = "You entered \(AmountString)"
            }
        }
            
        else
            
        {
            let alert = UIAlertView(title: "Error", message: "Please enter a number! ", delegate: nil, cancelButtonTitle: "OK")
            
            alert.show()
            
            TextLabel1.text = ""
            
        }
        
        
        if MysegmentControl.selectedSegmentIndex == 0
        {
            
            var strDouble = (TextLabel1.text as NSString).doubleValue
            var double1 = strDouble * 1.6
            var strFromDouble:String = String(format:"%f", 1.00)
            ResultLabel.text = toString(double1)
            
        }
        
        if MysegmentControl.selectedSegmentIndex == 1
        {
            
            var strDouble = (TextLabel1.text as NSString).doubleValue
            var double1 = strDouble / 1.6
            var stringFromDouble:String = String(format:"%f", 1.00)
            ResultLabel.text = toString(double1)
            
            
        }
        
    }
    
    @IBAction func ClearButtonPressed(sender: AnyObject) {
        
        TextLabel1.text = ""
        ResultLabel.text = "0"
    }
    
    
    
    
    //
    // MARK: UITextFieldDelegate
    //
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
