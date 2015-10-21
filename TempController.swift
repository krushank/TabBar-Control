//
//  TemperatureViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit

/*
    Class : TempController
    Use : Temperature converter from F to C and vice-versa

*/

class TempController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    //Outlet for picker view
    @IBOutlet var pickerView: UIPickerView!
    
    
    //outlet for segmented control
    @IBOutlet weak var mySegmentControlTemp: UISegmentedControl!
    
    
    //label for output
    @IBOutlet var ResultLabel: UILabel!
    
    
    //Arrays holding values for Farheit and Celcius respectively
    let  Array = (-129...134).map { $0 }
    
    let ArrayCtoF = (-90...57).map { $0 }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    function :segmentValueChanged
    Use : Activates when user changes the segmented control value
    Input : AnyObject from segmented control

    */
    @IBAction func segmentValueChanged(sender: AnyObject) {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            //resets the value
            ResultLabel.text = "0"
            
            //reload all components from array
            pickerView.reloadAllComponents()
         
        }
            
        else
        {
            //resets the value
            ResultLabel.text = "0"
            
            //reload ArrayCtoF
            pickerView.reloadAllComponents()
           
            
        }
        
        
    }
    
    
    /*
    function :pickerView
    Use : returns the selected value as string
    Input : pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int
    
    */
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            
            var far = " ℉"
            var item = Array[row] // selected Farheheit
            var string = (item as NSInteger) // converted to integer
            var number = (toString(string)) + far // concated to the 'far' string
            return number // returned as a string
            
        }
        else
            
        {
            var celcius = " ℃"
            var item = ArrayCtoF[row]  // selected Celcius
            var string = (item as NSInteger)    // converted to integer
            var number = (toString(string)) + celcius // concated to the 'celcius' string
            return number //returned as string
        }

    } // function ends
    
    
    
    
    /*
    function :pickerView
    Use : returns no of elements in array
    Input : pickerView: UIPickerView, numberOfRowsInComponent component: Int
    
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            return Array.count
        }
        
        else
        {
            return ArrayCtoF.count
        }
        
    }
    
    
    /*
    function :numberOfComponentsInPickerView
    Use : returns no of pickerView
    Input : pickerView: UIPickerView
    
    */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    /*
    function :pickerView
    Use : returns converted value as string
    Input : pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int
    */
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        // if user selects index = '0'
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            var celcius = "℃"
            pickerView.reloadAllComponents() //reload the array
            var itemSelected = Array[row] // gets the value selected from user
            var strDouble = (Double)(itemSelected as NSInteger) // converts the value to double
            var double1 = (strDouble - 32) / 1.8 // converts the value to celcius
            
            
            //Output the value
            ResultLabel.text = String.localizedStringWithFormat("%.1f %@", double1, celcius)
        }
            
        else
        {
            var fahrenheit = "℉"
            pickerView.reloadAllComponents()    //reload the array
            var itemSelected = ArrayCtoF[row]   // gets the value selected from user
            var strDouble = (Double)(itemSelected as NSInteger) // converts the value to double
            var double1 = (strDouble * 1.8) + 32 // converts the value to farenheit
           
            //output the value
            ResultLabel.text = String.localizedStringWithFormat("%.1f %@", double1, fahrenheit)
        }
        
    } // function ends
    
}// class ends







