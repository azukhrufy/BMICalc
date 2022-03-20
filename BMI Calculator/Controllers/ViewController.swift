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

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        bmiValue = String(format: "%.1f",weight/pow(height, 2))
        
        calculatorBrain.calcuateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func heightAdjusted(_ sender: UISlider) {
        heightValue.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightAdjusted(_ sender: UISlider) {
        weightValue.text = String(format: "%.1f", sender.value) + "Kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultText = calculatorBrain.getBmiValue()
            destinationVC.adviceText = calculatorBrain.getBmiAdvice()
            destinationVC.colorResult = calculatorBrain.getBmiBackground()
        }
    }
    
}

