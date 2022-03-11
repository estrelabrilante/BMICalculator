//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user202406 on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    //result datatype is BmiCal
    var result:BmiCalc?
         
    //*******calculating BMI*****
mutating func calcBMI(ht: Float, wt: Float){
   let bmiValunew = wt/(ht * ht);
    
    if(bmiValunew < 18.5){
        //underweight
        result = BmiCalc(value: bmiValunew, advice: "Eat more protein rich food", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1));    }
    else if bmiValunew<24.9{
        //normal weight
        result = BmiCalc(value: bmiValunew, advice: "Fit body", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1));    }
    else{
        //over weight
        result = BmiCalc(value: bmiValunew, advice: "Reduce cheese products", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1));    }
}
    
    func bmiV() -> String
     {
      
        let bmiVal = String(format: "%.2f", result?.value ?? 0.0);
        return bmiVal;
        
    }
    func getAdvice() -> String {
        let adviceVal = result?.advice ?? "Enjoy your food"
        return adviceVal;
    }
    func getColor() -> UIColor {
        let colorVal = result?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        return colorVal;
    }
}
