//
//  interactive.swift
//  TipCalculator-ccs
//
//  Created by Christopher Stanley on 10/10/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var tipInput: String = ""
    private var io = Io()
    
    func go() {
        
        while !done {
            
            // Ask the user for input right here.
            
            io.writeMessage("\nHow much is your subtotal?")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
                break
            } else {
                print("The input is: \(Double(currentInput)!)")
            }
            
            io.writeMessage("\nWhat percent would you like to tip?")
            tipInput = io.getInput()
            
            if tipInput == "q" {
                done = true
                break
            } else {
                print("The input is: \(Double(tipInput)!)")
            }
            
            let totalAmount: Double = (Double(currentInput)! * 1.06) + (Double(currentInput)! * (Double(tipInput)! / 100))
            let roundedTotal: Double = (round(totalAmount*100) / 100)
            
            io.writeMessage("Your total amount is \(roundedTotal)")
            
            
           
        }
        print("Exiting.....")
        
        return
    }
    
}
