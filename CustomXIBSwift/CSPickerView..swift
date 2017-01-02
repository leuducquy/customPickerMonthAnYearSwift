//
//  CSPickerView.swift
//  pickerkViewSwift
//
//  Created by quy on 5/15/16.
//  Copyright © 2016 quy. All rights reserved.
//

import UIKit
protocol CSPickerViewDelegate {
    func donePicker(_ month:Int, year: Int)
}

@IBDesignable class CSPickerView: UIView {
     var delegate : CSPickerViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    @IBOutlet weak var pickerView: MonthYearPickerView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
   
   
  

    @IBAction func hidePickerView(_ sender: AnyObject) {
       self.isHidden = true
       
    }
    @IBAction func doneButtonClicked(_ sender: AnyObject) {
        self.delegate?.donePicker(pickerView.month, year: pickerView.year)
        self.isHidden = true
    }
    @IBOutlet weak var donePickerView: UIButton!
   
    
       func loadViewFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CSPickerView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view);
        
        
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
