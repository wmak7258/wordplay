//
//  VerbViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class VerbViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var button2: UIButton!
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let text = (verbTextField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
        if !text.isEmpty{
            button2.userInteractionEnabled = true
        } else {
            button2.userInteractionEnabled = false
        }
        return true
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        verbTextField.delegate = self
        if ((verbTextField.text?.isEmpty) != nil){
            button2.userInteractionEnabled = false
        }
    }
    var wordplay2 = MadLib()
   
    @IBAction func nextButton2(sender: AnyObject) {
        let verbDisplay:String = verbTextField.text!
        wordplay2.verb = verbDisplay
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let next2 = segue.destinationViewController as! AdjectiveViewController
        next2.wordPlay3 = wordplay2
    }
}
