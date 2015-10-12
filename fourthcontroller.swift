//
//  TemperatureViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import Foundation
import UIKit


class fourthcontroller: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
   
    @IBOutlet weak var temp: UIPickerView!
    
    
    
   
    
    
    //var Array = ["1", "2"]
    
    
    let  Array = (-129...134).map { $0 }
    
    
    
    // var Array = [Int]()
    
    
    
    let ArrayCtoF = (-90...57).map { $0 }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        temp.delegate = self
        temp.dataSource = self
        
        //pickerTemp.delegate = self
        //pickerTemp.dataSource = self
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
//    @IBAction func segmentValueChanged(sender: AnyObject) {
//        
//        if mySegmentControlTemp.selectedSegmentIndex == 0
//        {
//            ResultLabel.text = "0"
//            //pickerView.reloadAllComponents()
//            // pickerView.hidden = false
//            //pickerTemp.hidden = true
//            //pickerView.reloadAllComponents()
//        }
//            
//        else
//        {
//            ResultLabel.text = "0"
//            //pickerView.reloadAllComponents()
//            //pickerView.hidden = true
//            //pickerTemp.hidden = false
//            
//        }
//        
//        
//    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    
        
                return Array[row]}
    
    
    
    
    //}
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
//        if mySegmentControlTemp.selectedSegmentIndex == 0
        
            return Array.count
//        else
//        { return ArrayCtoF.count }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
       var itemSelected = Array[row]
    }
    
//        if mySegmentControlTemp.selectedSegmentIndex == 0
//        {
//            // pickerView.reloadAllComponents()
//            var itemSelected = Array[row]
//            //var strDouble = (itemSelected as NSString).doubleValue
//            var double1 = (itemSelected * 1)
//            //strDouble = itemSelected *
//            var stringFromDouble:String = String(format:"%f", 1.00)
//            // ResultLabel.text = toString(double1)
//            ResultLabel.text = toString(double1)
//        }
//            
//        else
//        {
//            
//            // pickerView.reloadAllComponents()
//            
//            var itemSelected = ArrayCtoF[row]
//            //var strDouble = (itemSelected as NSString).doubleValue
//            var double1 = itemSelected
//            //var double1 = (strDouble - 32) / 1
//            var stringFromDouble:String = String(format:"%f", 1.00)
//            ResultLabel.text = toString(double1)
//        }
//        
//    }
//    
}






