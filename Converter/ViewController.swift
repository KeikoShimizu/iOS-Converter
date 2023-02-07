//
//  ViewController.swift
//  Converter
//
//  Created by SHIMIZU KEIKO on 2023-01-06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ConvertTemp(_ sender: Any) {
        
        guard let tempString = tempText.text
        else {
            return
        }
        
        if let fahrenheit = Double (tempString){
            let celsius = (fahrenheit - 32) / 1.8
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
    }
    
}

//23."guard statement" varify tempText field to have text.
//23.tempText.text is accesing to the value inside text field

