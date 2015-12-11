//
//  File.swift
//  WordPlayGame
//
//  Created by student1 on 12/9/15.
//  Copyright © 2015 John Hersey High school. All rights reserved.
//

import Foundation

class MadLib {
    var noun = String()
    var verb = String()
    var adjective = String()

    init()
    {
        self.noun = "sky"
        self.verb = "run"
        self.adjective = "fast"
    }
    
    func getSentence(wordPlayFinal: SentenceViewController) -> String
    {
        return wordPlayFinal
    }
    
}