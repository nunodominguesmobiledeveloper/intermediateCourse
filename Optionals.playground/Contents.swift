import UIKit

//MARK: Optionals

/*
 RULES
 -every variable type must be defined. (Implicit / Explicit)
 -The type can be inferred based on the value
 -Every normal type must have a value associated
 */

//Implicit / Explicit

let name: String = "Bob" // Explicit
let newName = "Bob the Developer" // Implicit

let myAge: Int = 38 //Explicit
let myWifeAge = 39 //Implicit


//Optional type allow to store nil
let myName: String? = nil
let yourName: String? = "Bob Lee"

print(myName)
print(yourName)


//Optional Rules
//Optional type do not interact with each other
//Unwrapping - the process of convert optionals to normal types

let num1: Int? = 12
let num2: Int? = 21

//Cannot work with two optionals, must unwrap
//let result = num1 + num2 Error


//Forced unwrapping - ! - unsafe - if the value is nil crashes the app
let robAge: Int? = 34

let newRobAge = robAge!
print(newRobAge)


//Implicit unwrapping - safe unwrapping
let imageFromFacebook: String? = nil //"Bob's face"

if let image = imageFromFacebook {
    print(image)
} else {
    print("There is no image")
}

//guard let - used to return if the value is nil

let numberForFunction: Int? = 23

func increaseNumber(number: Int?) -> String {
    guard let number = number else { return "There is no value in the number"}
    
    let result = number + 1
    
    return "the number increased to \(result)"
}

let resultValue = increaseNumber(number: numberForFunction)
print(resultValue)








