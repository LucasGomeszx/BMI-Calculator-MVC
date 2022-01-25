
import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmi = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi
    }
    
    func getAdiviceValue() -> String {
        return bmi?.adivice ?? "No advice"
    }
    
    func getUIcolorValue () -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI (h: Float, w: Float) {
        let bmiValue = w / (h * h)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, adivice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, adivice: "Fit as a fiddle", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, adivice: "Eat lass pies", color: UIColor.red)
        }
    }
    
}
