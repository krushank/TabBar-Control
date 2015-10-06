//
//  MassViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
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
            Label1.text = "Mass in Pounds"
            Label2.text = "Mass in Kilograms"
            
            
          
            ResultLabel.text = "0"
            
            
        }
        
        if MysegmentControl.selectedSegmentIndex == 1
        {
            Label1.text = "Mass in Kilograms"
            Label2.text = "Mass in Pounds"
            
          
           
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
        var double1 = strDouble / 2.20
        var strFromDouble:String = String(format:"%f", 1.00)
        ResultLabel.text = toString(double1)
                
        }
        
        else if MysegmentControl.selectedSegmentIndex == 1
        {
            
            var strDouble = (TextLabel1.text as NSString).doubleValue
            var double1 = strDouble * 2.20
            var stringFromDouble:String = String(format:"%f", 1.00)
            ResultLabel.text = toString(double1)
            
            
        }
        
    }
    
     func ClearButtonPressed(sender: UIButton)
    {
        
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
