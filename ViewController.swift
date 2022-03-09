//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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


        
   // print(Int(sender.value))
    
}
    
    @IBAction func calculateBMI(_ sender: Any) {
        let heightValue = heightSlider.value  ;
        let weightValue = weightSlider.value ;
    //let bmiCal = weightValue/(heightValue * heightValue)
        //print(bmiCal)
        //or
    let bmi = weightValue / pow(heightValue, 2)
        print(bmi)
        let secondVC = SecondViewController();
        secondVC.bmiValue = String(format: "%.1f", bmi);
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
}
