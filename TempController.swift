//
//  TemperatureViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit



class TempController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet weak var mySegmentControlTemp: UISegmentedControl!
    
    @IBOutlet var ResultLabel: UILabel!
    
    
    
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
    
    
    
    
    @IBAction func segmentValueChanged(sender: AnyObject) {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            ResultLabel.text = "0"
            pickerView.reloadAllComponents()
         
        }
            
        else
        {
            ResultLabel.text = "0"
            pickerView.reloadAllComponents()
           
            
        }
        
        
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            var far = " ℉"
            var item = Array[row]
            var string = (item as NSInteger)
            var number = (toString(string)) + far
            return number
            
        }
        else
            
        {
            var celcius = " ℃"
            var item = ArrayCtoF[row]
            var string = (item as NSInteger)
            var number = (toString(string)) + celcius
            return number
        }

    }
    
    
    
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
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            var celcius = "℃"
            pickerView.reloadAllComponents()
            var itemSelected = Array[row]
            var strDouble = (Double)(itemSelected as NSInteger)
            var double1 = (strDouble - 32) / 1.8

            ResultLabel.text = String.localizedStringWithFormat("%.1f %@", double1, celcius)
        }
            
        else
        {
            var fahrenheit = "℉"
            pickerView.reloadAllComponents()
            var itemSelected = ArrayCtoF[row]
            var strDouble = (Double)(itemSelected as NSInteger)
            var double1 = (strDouble * 1.8) + 32
           
            ResultLabel.text = String.localizedStringWithFormat("%.1f %@", double1, fahrenheit)
        }
        
    }
    
}







