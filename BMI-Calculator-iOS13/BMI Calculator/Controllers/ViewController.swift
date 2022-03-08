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

}
