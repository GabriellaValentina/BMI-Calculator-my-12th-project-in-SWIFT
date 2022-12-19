//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gabriela Valentina on 17.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var BmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        BmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
