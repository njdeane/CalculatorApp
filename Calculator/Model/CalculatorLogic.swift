//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Nic Deane on 9/1/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "%" {
            return number / 100
        } else if symbol == "AC" {
            return 0
        }
        return nil
    }
}



