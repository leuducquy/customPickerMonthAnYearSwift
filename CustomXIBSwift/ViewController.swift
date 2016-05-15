//
//  ViewController.swift
//  CustomXIBSwift
//
//  Created by quy on 5/14/16.
//  Copyright © 2015 quy. All rights reserved.
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
    }
    func donePicker(month: Int, year: Int) {
        print(month,year)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

