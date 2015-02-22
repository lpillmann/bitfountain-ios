//
//  ViewController.swift
//  Postcard
//
//  Created by Lui Pillmann on 2/18/15.
//  Copyright (c) 2015 Lui Pillmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        var color = sender.backgroundColor;
        sendMessageButton.backgroundColor = nil;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.blueColor();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();

        sendMessageButton.backgroundColor = color;
        sendMessageButton.setTitle("Message sent", forState: UIControlState.Normal);        
    }

}

