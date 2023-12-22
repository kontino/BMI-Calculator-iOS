//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Konstantinos Gouzinis on 17/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    var bmi: Float = 0.0
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> Float {
        return bmi
    }
    
}
