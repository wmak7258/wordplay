//
//  AdjectiveViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class AdjectiveViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var AdjectiveTextField: UITextField!
    @IBOutlet weak var button3: UIButton!
    
   
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let text = (AdjectiveTextField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
        if !text.isEmpty{
            button3.userInteractionEnabled = true
        } else {
            button3.userInteractionEnabled = false
        }
        return true
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        AdjectiveTextField.delegate = self
        if ((AdjectiveTextField.text?.isEmpty) != nil){
            button3.userInteractionEnabled = false
        }
        
    }
    var wordPlay3 = MadLib()
   
    @IBAction func nextButton3(sender: UIButton) {
        let adjectiveDisplay:String = AdjectiveTextField.text!
        wordPlay3.adjective = adjectiveDisplay
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let next3 = segue.destinationViewController as! SentenceViewController
        next3.wordPlayFinal = wordPlay3
    }
}
