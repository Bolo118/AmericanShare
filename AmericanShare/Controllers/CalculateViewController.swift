//
//  ViewController.swift
//  AmericanShare
//
//  Created by Adithep on 7/23/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var showPersonLabel: UILabel!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twelveButton: UIButton!
    @IBOutlet weak var fifthTeenButton: UIButton!
    @IBOutlet weak var eightTeenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    
    var people = 0
    var tip = 0.0
    var selectedTip = "0.0"
    var result = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setDefault()
        zeroButton.isSelected = true
        selectedTip = "0%"
        inputTextField.text = nil
        
    }
    
    @IBAction func tipSelectedButtonTapped(_ sender: UIButton) {
    
        setDefault()
        zeroButton.isSelected = false
        sender.isSelected = true
        
        let tipSplit = sender.tag
        let tipPercent = Double(tipSplit) / 100.0
        tip = tipPercent
        selectedTip = sender.currentTitle!
    }
    
    @IBAction func stepperValue(_ sender: UIStepper) {
        showPersonLabel.text = String(format: "%.0f", sender.value)
        people = Int(sender.value)
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        let totalBill = inputTextField.text!
        if totalBill != "" {
            let totalTip = Double(totalBill)! * tip
            let totalEachPerson = (Double(totalBill)! + totalTip) / Double(people)
            let totalEachPersonString = String(format: "%.2f", totalEachPerson)
            result = Double(totalEachPersonString)!
            performSegue(withIdentifier: "toResult", sender: self)
        } else {
            let alert = UIAlertController(title: "Invalid Input", message: "Please enter the amount of your bill", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = result
            destinationVC.tip = selectedTip
            destinationVC.people = people
        }
    }
    
    // dismiss keyboard when tap outside the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func setDefault() {
        tenButton.isSelected = false
        twelveButton.isSelected = false
        fifthTeenButton.isSelected = false
        eightTeenButton.isSelected = false
        twentyButton.isSelected = false
    }
}

