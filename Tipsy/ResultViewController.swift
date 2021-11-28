//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Karlo Fabijanić on 27.11.2021..
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var numberOfPeople = 2
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = result
        splitLabel.text = "Split between \(numberOfPeople) people, with \(tip)% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
