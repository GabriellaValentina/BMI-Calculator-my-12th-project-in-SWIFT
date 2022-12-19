//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gabriela Valentina on 17.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    mutating func calculateBMI(weight: Float,height:Float){
        let bmiValue = weight/(height*height)
        if bmiValue<18.5{
            bmi=BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        }else if bmiValue>=24.9 && bmiValue>=18.5{
            bmi=BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        }else{
            bmi=BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
        
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? .purple
    }
    func getBMIValue()->String{
        return String(format: ".1f", bmi?.value ?? 0.0)
    }
}
