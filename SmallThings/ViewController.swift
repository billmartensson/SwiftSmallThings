//
//  ViewController.swift
//  SmallThings
//
//  Created by Bill Martensson on 2020-11-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theDatepicker: UIDatePicker!
    
    
    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func letsClick(_ sender: Any) {
        
        print(theDatepicker.date)
        
        var anotherdate = theDatepicker.date.addingTimeInterval(4*24*60*60)
        
        print(anotherdate)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd yyyy MM"
        let dateString = formatter.string(from: theDatepicker.date)
        
        theLabel.text = dateString
        
        
        //var otherDate = formatter.date(from: "05 2007 03")
        //theDatepicker.date = otherDate!
        
        let modifiedDate = Calendar.current.date(byAdding: .hour, value: -438, to: theDatepicker.date)!
        
        print(modifiedDate)
        
    }
    
}

