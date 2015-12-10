//
//  ViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nounTextField: UITextField!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let text = (nounTextField.text as NSString).stringByReplacingCharactersInRange(range, withString: String)
        if !text.isEmpty{
            button.userInteractionEnabled = true
        } else {
            button.userInteractionEnabled = false
        }
        return true
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var wordplay1 = MadLib()
    
    @IBAction func nextButton1(sender: UIButton) {
        let nounDisplay:String = nounTextField.text!
        wordplay1.noun = nounDisplay
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let next1 = segue.destinationViewController as! VerbViewController
        next1.wordplay2 = wordplay1
    }
    
    
}

