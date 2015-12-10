//
//  VerbViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class VerbViewController: UIViewController {
    @IBOutlet weak var verbTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var wordplay2 = wordPlay()
   
    @IBAction func nextButton2(sender: AnyObject) {
        let verbDisplay:String = verbTextField.text!
        wordplay2.verb = verbDisplay
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let next2 = segue.destinationViewController as! AdjectiveViewController
        next2.wordplay3 = wordplay2
    }
}
