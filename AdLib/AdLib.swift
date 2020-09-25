//
//  AdLib.swift
//  AdLib
//
//  Created by Payton Pehrson on 9/24/20.
//  Copyright © 2020 Payton Pehrson. All rights reserved.
//

import UIKit

class AdLib {
    var noun1: String
    var noun2: String
    var verb1: String
    var verb2: String
    var adjective: String
    var adverb: String
    var AdLib: String
    
    init(noun1: String, noun2: String, verb1: String, verb2: String, adjective: String, adverb: String) {
        self.noun1 = noun1
        self.noun2 = noun2
        self.verb1 = verb1
        self.verb2 = verb2
        self.adjective = adjective
        self.adverb = adverb
        self.AdLib = ""
        self.generateAdLib();
    }
    
    func generateAdLib() {
        self.AdLib = "One day, Tom the cat was sleeping when a mouse named Jerry saw him and decided to spoil his fun. With a mischevious grin and a wink toward an audience who appeared to be missing, Jerry quickly ran into his mouse-hole and grabbed his nicest " + self.noun1 + " before running back to Tom. Being careful not to wake Tom, Jerry " + self.verb1 + " up to the cat's tail and proceeded to smash down the " + self.noun1 + " with all of his strength! Tom yowled and jumped in the air! Jerry began to scurry as Tom seemingly floated in the air. Once Tom reached the ground, his hand swooped to the nearest object, a " + self.noun2 + ", and he grabbed it with his might! He ran after Jerry, catching up with him, and grabbed Jerry in one hand, ready to bash him in the head! However, as Tom brought the " + self.adjective + " " + self.noun2 + " down, Jerry freed his arms, grabbed the " + self.noun2 + " and began to " + self.adverb + " " + self.verb2 + " Tom with the " + self.noun2 + ". Surprised, Tom let go and Jerry tumbled to the floor. He quickly ran back into his hole, where Tom had no chance of catching him."
    }
}
