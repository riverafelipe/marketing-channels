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
    
    @IBOutlet var invalidLabel: UILabel!
    
    
    @IBAction func addButton(sender: AnyObject) {
        
        // Makes the Invalid Channel label disapear if a correct channel is inputed
        
        invalidLabel.text = " "
        
        // Converts the channelTextField into an NSString
        
        let channelNSString = NSString(string: channelTextField.text!)
        
        // Converts the channelTextField into all UPPERCASE
        
        let channelInput = channelNSString.uppercaseString
        
        // Analysis the channelTextInput and adds it to the correct channel in the channelDatabase
        
        if channelInput == "INSTAGRAM" {
            
            channelDatabase["Instagram"]! += 1
            
        } else if channelInput == "GOOGLE" {
            
            channelDatabase["Google"]! += 1
            
        } else if channelInput == "TRIPADVISOR" {
            
            channelDatabase["Tripadvisor"]! += 1
            
        } else if channelInput == "CONCIERGE" {
            
            channelDatabase["Concierge"]! += 1
            
        } else if channelInput == "BOUCHER" {
            
            channelDatabase["Boucher"]! += 1
            
        } else if channelInput == "OTHER" {
            
            channelDatabase["Other"]! += 1
            
        } else {
            
            invalidLabel.text = "Oops! That channel does not exist."
            
        }
        
        print(channelTextField.text)
        
        // Makes the channelTextField blank after an input has been added
        
        channelTextField.text = ""
        
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

