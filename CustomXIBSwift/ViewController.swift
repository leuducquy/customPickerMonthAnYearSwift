//
//  ViewController.swift
//  CustomXIBSwift
//
//  Created by Karthik Prabhu Alagu on 06/08/15.
//  Copyright © 2015 KPALAGU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CSPickerViewDelegate {

 
    @IBAction func showPickerView(sender: AnyObject){
        self.customView.hidden = false
    }
    @IBOutlet weak var showPicker: UIButton!
    @IBOutlet weak var customView: CSPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customView.delegate = self
        customView.titleEx.text = "aaaaaa"
//    self.view.backgroundColor = (UIColor(red: 255/0, green: 255/0, blue: 255/0, alpha: 0.5))
//
//    
    }
    func donePicker(month: Int, year: Int) {
        print(month)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

