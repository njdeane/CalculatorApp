//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTyping: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTyping = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert displayLabel text to a Double.")
        }
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "%" {
                displayLabel.text = String(number / 100)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            }
                
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTyping {
                displayLabel.text = numValue
                isFinishedTyping = false
            } else {
                if numValue == "." {
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Cannot convert displayLabel text to a Double.")
                    }
                   let isInt = floor(currentDisplayValue) == currentDisplayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
    
    
    
}



