//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
      let weight = String(format: "%.0f", sender.value)
        weightLabel.text =
        "\(weight) kg"
        
    }
    var bmi = "0.0"
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
            destinationVc.advice = calculatorBrain.getAdvice()
            destinationVc.color = calculatorBrain.getColor()
        }
    }
}

