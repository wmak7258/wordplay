//
//  SentenceViewController.swift
//  WordPlayGame
//
//  Created by student1 on 12/8/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import UIKit

class SentenceViewController: UIViewController {

   
    @IBOutlet weak var sentenceLabel: UILabel!
    
    var wordPlayFinal = MadLib()
    override func viewDidLoad() {
        super.viewDidLoad()
        sentenceLabel.text = " \(wordPlayFinal.noun) \(wordPlayFinal.verb) into BurgerKing to buy a \(wordPlayFinal.adjective) burger"
    }
    
    
}
