//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by mac on 14/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    var adviceValue = ""
    var colorValue = UIColor.blue
    
    mutating func calcuateBmi(height: Float,weight: Float){
        let bmiValue = String(format: "%.1f",weight/pow(height, 2))
        if Float(bmiValue) ?? 0.0 < 18.5{
            adviceValue = "You must eat Well"
            colorValue = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        else if Float(bmiValue) ?? 0.0 >= 18.5 && Float(bmiValue) ?? 0.0 <= 24.9{
            adviceValue = "You are Healty"
            colorValue = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        else if Float(bmiValue) ?? 0.0 == 25.0{
            adviceValue = "You Must less your nutritionts"
            colorValue = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
        else{
            adviceValue = "Danger, you overweight!"
            colorValue = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: adviceValue, color: colorValue)
    }
    
    func getBmiValue() -> String{
        
        return bmi?.value ?? String()
    }
    
    func getBmiAdvice() -> String{
        return bmi?.advice ?? String()
    }
    
    func getBmiBackground() -> UIColor{
        return bmi?.color ?? UIColor()
    }
}
