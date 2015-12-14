 //
//  SettingViewController.swift
//  tips
//
//  Created by Akash Sahoo on 12/11/15.
//  Copyright © 2015 Akash Sahoo. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var settingsTipChoiceDefaults: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("defaultTipPercentage")
        settingsTipChoiceDefaults.selectedSegmentIndex = intValue
        
        
               // Do any additional setup after loading the view.
    }

    @IBAction func tipDefaultsAction(sender: AnyObject) {
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(settingsTipChoiceDefaults.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
