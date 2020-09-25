//
//  AdLibDisplay.swift
//  AdLib
//
//  Created by Payton Pehrson on 9/24/20.
//  Copyright © 2020 Payton Pehrson. All rights reserved.
//

import UIKit

class AdLibDisplay: UIViewController {
    
    @IBOutlet var adLibLabel: UILabel!
    @IBOutlet var adLibTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        globalAdLib.generateAdLib()
        adLibTextView.text = globalAdLib.AdLib
    }
}
