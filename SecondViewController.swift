//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by user202406 on 3/9/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController:UIViewController {
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.darkGray;
        let label = UILabel();
        label.text = bmiValue;
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 200);
        //add label as child to parent view
        view.addSubview(label);
        
        
    }
    
}
