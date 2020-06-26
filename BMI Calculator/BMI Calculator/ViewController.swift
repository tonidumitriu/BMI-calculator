//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Toni Dumitriu on 3/2/20.
//  Copyright © 2020 Toni Dumitriu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   @IBAction func buttonTapped(_ sender: Any) {
          let weight = Double(weightTextField.text!)!
          let height = Double(heightTextField.text!)!
          
          let bmi = weight/(height * height)
    
        var classification:String
        
    if bmi < 18.5{
        classification = "Underweight"
    }
    else if bmi < 24.9{
        classification = "Healthy Weight"
    }
    else if bmi < 29.9{
        classification = "Overweight"
    }
    else{
        classification = "Obese"
    }
    
    let formattedBMI = String(format: "%.1f", bmi)
    bmiLabel.text = "BMI: \(formattedBMI), \(classification)"
    
      
      }
    
}

