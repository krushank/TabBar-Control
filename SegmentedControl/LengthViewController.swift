//
//  LengthViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/11/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//  Converts distance from miles to kms and vice versa...

import Foundation


import UIKit

/*
Class : LengthView Controller
Function : Creates a converter for converting lbs to kgs and vice-versa

*/
class LengthViewController: UIViewController, UITextFieldDelegate {
    
    //Label for Segmented control
    @IBOutlet var MysegmentControl: UISegmentedControl!
    
    
    //Label for input textfield
    @IBOutlet var TextLabel1: UITextField!
    
    
    //Label for header for input values
    @IBOutlet var Label1: UILabel!
    
    
    // Button to clear values
    @IBOutlet var ClearButton: UIButton!
    
    
    // header for results
    @IBOutlet var Label2: UILabel!
    
    
    // label for output
    @IBOutlet var ResultLabel: UILabel!
    
    
    //convert button
    @IBOutlet var ConvertButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    Function : MysegmentControlValuechanged
    Use: Activates when user changes segemented control index values
    Input : Index values from segmented control
    
    
    */
    @IBAction func MysegmentControlValueChanged(sender: AnyObject) {
        
        // if the user selects first index
        if MysegmentControl.selectedSegmentIndex == 0
        {
            // Label for headers
            Label1.text = "Distance in Miles"
            Label2.text = "Distance in Kilometers"
            
            
            //label for result output
            ResultLabel.text = "0"
            
            
        }
            
            //if user selecsts index '1'
        else if MysegmentControl.selectedSegmentIndex == 1
        {
            // Label for headers
            Label1.text = "Distance in Kilometers"
            Label2.text = "Distance in Miles"
            
            
            //label for result output
            ResultLabel.text = "0"
            
            
        }
        
        
    }
    
    
    /*
    Function : ConvertButtonPressed
    Use: Activates when user press convert button
    Input : UIButton
    
    
    */
    @IBAction func ConvertButtonPressed(sender: UIButton)
        
    {
        //creating instance of NSNumberFormatter()
        var numberFormatter = NSNumberFormatter()
        
        //Defining style
        numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        // assigning the input
        if let number = numberFormatter.numberFromString(TextLabel1.text)
        {
            
            //if index = 0 selected
            if MysegmentControl.selectedSegmentIndex == 0
            {
                //                var numberFormatter = NSNumberFormatter()
                //                numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
                
                //assigning input value as double
                var strDouble = (TextLabel1.text as NSString).doubleValue
                
                // converting the value
                var double1 = strDouble * 1.6
                
                
                //formatting the value
                let number = numberFormatter.stringFromNumber(double1)
                
                
                //assigning formatted value to output label
                ResultLabel.text = number
                
                
            }
                
                //if user selecsts index = '1'
            else if MysegmentControl.selectedSegmentIndex == 1
            {
                //                var numberFormatter = NSNumberFormatter()
                //                numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
                
                //assigning input value as double
                var strDouble = (TextLabel1.text as NSString).doubleValue
                
                // converting the value
                var double1 = strDouble / 1.6
                
                
                //formatting the value
                let number = numberFormatter.stringFromNumber(double1)
                
                //assigning formatted value to output label
                ResultLabel.text = number
                
            }
        } // function ends
            
            
        else
            
        { // activates when user enters non-numeric values
            let alert = UIAlertView(title: "Error", message: "Please enter a number! ", delegate: nil, cancelButtonTitle: "OK")
            
            alert.show()
            
            TextLabel1.text = ""
            
        }
        
        
    } //function ends
    
    
    
    
    /*
    Function : ClearButtonPressed
    Use: Activates when user press Clear button and resets the values
    Input : UIButton
    
    
    */
    @IBAction func ClearButtonPressed(sender: AnyObject) {
        
        //resets the values
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
