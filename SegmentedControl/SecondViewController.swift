//
//  TemperatureViewController.swift
//  SegmentedControl
//
//  Created by Krushank Patel on 10/5/15.
//  Copyright (c) 2015 Krushank Patel. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
   
    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet var MySegmentControlTemp: UISegmentedControl!
    
    @IBOutlet var ResultLabel: UILabel!

    var Array = ["0","32"]
    
     var ArrayCtoF = ["1","32"]
    
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

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return Array[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        
        //if MySegmentControlTemp.selectedSegmentIndex == 0
        //{
            var itemSelected = Array[row]
            var strDouble = (itemSelected as NSString).doubleValue
        var double1 = (strDouble * 1.8) + 32.0
         var stringFromDouble:String = String(format:"%f", 1.00)
        ResultLabel.text = toString(double1)
       // }
        
//       else
//        {
//            var itemSelected = ArrayCtoF[row]
//            var strDouble = (itemSelected as NSString).doubleValue
//            var double1 = (strDouble - 32) / 1.8
//            var stringFromDouble:String = String(format:"%f", 1.00)
//            ResultLabel.text = toString(double1)
//            
//        }
        
    }
    
}


    

    

