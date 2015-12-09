//
//  ViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nounTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var wordplay1 = wordPlay()
    
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

