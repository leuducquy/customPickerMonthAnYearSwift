//
//  ViewController.swift
//  CustomXIBSwift
//
//  Created by quy on 5/14/16.
//  Copyright © 2015 quy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CSPickerViewDelegate {

 
    @IBAction func showPickerView(_ sender: AnyObject){
        self.customView.isHidden = false
    }
    @IBOutlet weak var showPicker: UIButton!
    @IBOutlet weak var customView: CSPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customView.delegate = self
    }
    func donePicker(_ month: Int, year: Int) {
        var stringMonth : String! = ""
        if (month < 10){
            stringMonth = "0" + String(month)
        }else{
            stringMonth = String(month)
        }
        guard (stringMonth) != nil  else {
                print("String month is nil")
            return
       
        }
        print(( stringMonth))
        self.showPicker.setTitle("\(stringMonth!)/\(year)" , for: UIControlState())
        print(month,year)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

