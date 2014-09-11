//
//  ViewController.swift
//  Postcard
//
//  Created by Rod Brewster on 9/9/14.
//  Copyright (c) 2014 Rod Brewster. All rights reserved.
//

//Import Apple's functionality for all the UI items
import UIKit

// This class is named View Controller and is a subclass of UIViewController
class ViewController: UIViewController {

    //Add a label property of class UILabel which is an unwrapped optional
    @IBOutlet weak var messageLabel: UILabel!
    
    //Add a text field property of class UITextField which is an unwrapped optional. We can unwrap them because we know they exist because we hooked them up in the staoryboard
    @IBOutlet weak var enterNameTextField: UITextField!
    
    //Add another text field property of class UITextField which is an unwrapped optional
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    //Add a mailButton property that would enable you to change the properties of the button. Note that this button is both a property and a method.
    @IBOutlet weak var mailButton: UIButton!
    
    
    //Add a button method that will provide instructions on what to do when the button is pressed. The parameter for the function is sender and it will be passed the actual button that was pressed. This is helpful if you're hooking up multiple buttons to the same function and then taking action based on the button that was pressed.
    @IBAction func sendMailButtonPressed(sender: UIButton) {
    
    //Unhide the message label. you can get the names of many of the properties by looking at the attributes inspector. the hidden property has two states, either true or false.
        messageLabel.hidden = false
    //Get the text from the enterAMessageTextField and Set messageLablet.text to it. (Set is always on the left and Get is always on the right)
        messageLabel.text = enterAMessageTextField.text
        
        //set the message text field to blank
        enterAMessageTextField.text = ""
        
        //Make the keyboard disappear. This will occur right after the text in the enterAMessageTextField disappears.
        enterAMessageTextField.resignFirstResponder()
        
        //Change the color of the text in the messageLabel to red. Tap the alt key then ".textColor" and you will see that .textColor is of type UIColor so the getter needs to be of type UIColor. UIColor has a class method call redColor. There is also a UIColor method directly than enable you to enter the RGB and alpha of a custom color
        messageLabel.textColor = UIColor.redColor()
        
        //Change the text within the Send Mail button. Since this is a button and not a text field, it has a Title and not text. UIControlState enable you to determine when the title is change. For example, if the user was pressing the button or not pressing the button. You can therefore have a different title for different states of the button.
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        //This file will be uploaded to github
    }
    
    

    override func viewDidLoad() {
        //When the viewDidLoad method above is called, run the Apple super.viewDidLoad method first
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        //Run the Apple method super.didReceiveMemoryWarning method first
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

