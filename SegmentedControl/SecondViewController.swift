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
    
   
    
    @IBOutlet weak var mySegmentControlTemp: UISegmentedControl!
    @IBOutlet var ResultLabel: UILabel!

    @IBOutlet weak var pickerTemp: UIPickerView!
    
    var Array = ["0","32"]
    
     var ArrayCtoF = ["100","54"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //pickerView = UIPickerView()
        //pickerTemp = UIPickerView()
      
        
        //pickerView.tag = 0
        //pickerTemp.tag = 1
       
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerTemp.delegate = self
        pickerTemp.dataSource = self
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
        pickerView.hidden = false
        //pickerTemp.hidden = true
        //pickerView.reloadAllComponents()
    }
    
    else
    {
        ResultLabel.text = "0"
        pickerTemp.reloadAllComponents()
        //pickerView.hidden = true
        pickerTemp.hidden = false
    
    }
    
    
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            return Array[row]}
        else
            
        { return ArrayCtoF[row] }
     
        
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
            if mySegmentControlTemp.selectedSegmentIndex == 0
            {
                return Array.count}
        else
            { return ArrayCtoF.count }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        if mySegmentControlTemp.selectedSegmentIndex == 0
        {
            pickerView.reloadAllComponents()
            var itemSelected = Array[row]
            var strDouble = (itemSelected as NSString).doubleValue
        var double1 = (strDouble * 1.8) + 32.0
         var stringFromDouble:String = String(format:"%f", 1.00)
        ResultLabel.text = toString(double1)
        }
        
        else
        {
            
            pickerTemp.reloadAllComponents()
            
            var itemSelected = ArrayCtoF[row]
            var strDouble = (itemSelected as NSString).doubleValue
            var double1 = (strDouble - 32) / 1.8
            var stringFromDouble:String = String(format:"%f", 1.00)
            ResultLabel.text = toString(double1)
        }
        
    }
    
}


    

    

