//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit



class CalculateViewController: UIViewController {
   // var calculatorBrain = CalculatorBrain(height: 0.0, weight: 0.0, result: 0.0, bmiVal:"");
    var calculatorBrain = CalculatorBrain();
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        //float number
        let result = String(format:"%.2f" , sender.value) ;
        heightLabel.text = "\(result) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        // whole number, no decimal point
    weightLabel.text = "\(String(format:"%.0f" , sender.value)) kg";
    
}
    
    @IBAction func calculateBMI(_ sender: Any) {
        var heightValue = heightSlider.value  ;
        var weightValue = weightSlider.value ;
        
        calculatorBrain.calcBMI(ht:heightValue,wt:weightValue);
self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
        // Get the new view controller using segue.destination.
        let destinationVC = segue.destination as! FinalViewController
        // Pass the selected object to the new view controller.
    destinationVC.bmiValue = calculatorBrain.bmiV()
            
            
        }
    }
    
}
