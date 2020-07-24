//
//  ResultViewController.swift
//  AmericanShare
//
//  Created by Adithep on 7/23/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result = 0.0
    var people = 0
    var tip = "0%"
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "$ \(String(result))"
        detailLabel.text = "Split between \(people) people, with \(tip) tip."
    }


    @IBAction func reCalculateButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
