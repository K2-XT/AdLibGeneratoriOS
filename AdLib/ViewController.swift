//
//  ViewController.swift
//  AdLib
//
//  Created by Payton Pehrson on 9/24/20.
//  Copyright © 2020 Payton Pehrson. All rights reserved.
//

import UIKit

var globalAdLib = AdLib(noun1: "", noun2: "", verb1: "", verb2: "", adjective: "", adverb: "")

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nounOneField: UITextField!
    @IBOutlet var nounTwoField: UITextField!
    @IBOutlet var verbOneField: UITextField!
    @IBOutlet var verbTwoField: UITextField!
    @IBOutlet var adjectiveField: UITextField!
    @IBOutlet var adverbField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nounOneField.text = globalAdLib.noun1
        nounTwoField.text = globalAdLib.noun2
        verbOneField.text = globalAdLib.verb1
        verbTwoField.text = globalAdLib.verb2
        adjectiveField.text = globalAdLib.adjective
        adverbField.text = globalAdLib.adverb
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showAdLib":
            globalAdLib.noun1 = nounOneField.text!
            globalAdLib.noun2 = nounTwoField.text!
            globalAdLib.verb1 = verbOneField.text!
            globalAdLib.verb2 = verbTwoField.text!
            globalAdLib.adjective = adjectiveField.text!
            globalAdLib.adverb = adverbField.text!
        default:
            preconditionFailure("Unexpected segue identifier.")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

