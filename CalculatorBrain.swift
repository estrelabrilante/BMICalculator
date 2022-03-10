//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user202406 on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var result:Float = 0.0;
    var bmiVal:String = "0.0";
    
   /* var result:Float;
    var bmiVal:String;
    var height: Float;
    var weight: Float;
    init(height:Float,weight:Float,result:Float,bmiVal:String) {
        self.height = height;
        self.weight = weight;
        self.result = result;
        self.bmiVal = bmiVal;
    }*/
    
    mutating func calcBMI(ht: Float, wt: Float){
    result = wt/(ht * ht);
    }
    mutating func bmiV() -> String {
       bmiVal = String(format: "%.2f", result)
        return bmiVal;
    }
}
