//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var bmi: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2f", sender.value) + "m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format:"%.2f", sender.value) + "Kg"
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
//        bmi = weightSlider.value/pow(heightSlider.value, 2)
        calculatorBrain.calculateBMI(heightSlider.value, weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = String(format:"%.1f", bmi)
            destinationVC.bmiValue = String(format:"%.1f", calculatorBrain.getBMIValue())
        }
    }
    
}

