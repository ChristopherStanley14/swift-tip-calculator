//
//  main.swift
//  TipCalculator-ccs
//
//  Created by Christopher Stanley on 10/10/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

let interactive = Interactive()
let io = Io()

private var done: Bool = false


io.writeMessage("Tip Calculator!\n")
io.writeMessage("Enter c to run Calculator")
io.writeMessage(("Enter h for Help"))
io.writeMessage("Enter q to Quit")

// Run in interactive mode


while !done {
    var currentInput: String = ""
    currentInput = io.getInput()
    
    switch currentInput {
        
    case "c":
        interactive.go()
    case"h":
        io.writeMessage("This calculator will ask you for your subtotal. Then it will ask you for the percent you would like to tip. It will then add sales tax and calculate your total amount!")
        interactive.go()
    case"q":
        done = true
        
    default:
        io.writeMessage("Invalid Input")
        
    }
    exit(EXIT_SUCCESS)
}







