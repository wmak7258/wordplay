//
//  AdjectiveViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class AdjectiveViewController: UIViewController {
    
    @IBOutlet weak var AdjectiveTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var wordPlay3 = wordPlay()
   
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
