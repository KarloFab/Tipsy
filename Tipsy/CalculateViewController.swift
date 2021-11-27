//
//  ViewController.swift
//  Tipsy
//
//  Created by Karlo Fabijanić on 27.11.2021..
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTotalTextField.endEditing(true)
        
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleWithputPercentage = String(buttonTitle.dropLast())
        let buttonTitleAsNumber = Double(buttonTitleWithputPercentage)!
        tip = buttonTitleAsNumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPeopleLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let billTotalText = billTotalTextField.text!
        
        if billTotalText != "" {
            billTotal = Double(billTotalText)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        }
        
        print(finalResult)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
}

