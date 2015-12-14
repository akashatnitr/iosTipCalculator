//
//  ViewController.swift
//  tips
//
//  Created by Akash Sahoo on 12/11/15.
//  Copyright © 2015 Akash Sahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18,0.2,0.22]
        var selectedTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string:billField.text!).doubleValue
        
        var tip = billAmount*selectedTipPercentage;
        var total = billAmount + tip
        
        tipLabel.text = String(format:"$%.2f",tip)//"$\(tip)"
        totalLabel.text = String(format:"$%.2f",total)//"$\(total)"
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("defaultTipPercentage")
        tipControl.selectedSegmentIndex = intValue
        onEditingChanged(animated)
    }
    

}

