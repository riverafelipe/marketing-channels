//
//  FirstViewController.swift
//  Marketing App
//
//  Created by Felipe Rivera on 4/27/16.
//  Copyright © 2016 Felipe Rivera. All rights reserved.
//

import UIKit

var channelDatabase = ["Instagram"     : 0,
                       "Google"        : 0,
                       "Tripadvisor"   : 0,
                       "Concierge"     : 0,
                       "Boucher"       : 0,
                       "Other"         : 0
]



class FirstViewController: UIViewController {
    
    @IBOutlet var channelTextField: UITextField!
    
    @IBOutlet var groupSizeTextField: UITextField!
    
    
    @IBOutlet var invalidLabel: UILabel!
    
    
    @IBAction func addButton(sender: AnyObject) {
        
        // Converts the groupSizeTextField into an Int so that it could be added to the value of the cannelDatabase
        
        let groupSize = Int(groupSizeTextField.text!)!
        
        // Makes the Invalid Channel label disapear if a correct channel is inputed
        
        invalidLabel.text = " "
        
        // Converts the channelTextField into an NSString
        
        let channelNSString = NSString(string: channelTextField.text!)
        
        // Converts the channelTextField into all UPPERCASE
        
        let channelInput = channelNSString.uppercaseString
        
        // Analysis the channelTextInput and adds it to the correct channel in the channelDatabase
        
        if channelInput == "INSTAGRAM" {
            
            channelDatabase["Instagram"]! += groupSize
            
        } else if channelInput == "GOOGLE" {
            
            channelDatabase["Google"]! += groupSize
            
        } else if channelInput == "TRIPADVISOR" {
            
            channelDatabase["Tripadvisor"]! += groupSize
            
        } else if channelInput == "CONCIERGE" {
            
            channelDatabase["Concierge"]! += groupSize
            
        } else if channelInput == "BOUCHER" {
            
            channelDatabase["Boucher"]! += groupSize
            
        } else if channelInput == "OTHER" {
            
            channelDatabase["Other"]! += groupSize
            
        } else {
            
            invalidLabel.text = "Oops! That channel does not exist."
            
        }
        
        print(channelTextField.text)
        
        // Makes the channelTextField blank after an input has been added
        
        channelTextField.text = ""
        
        groupSizeTextField.text = ""
        
        print(channelDatabase)
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

