import UIKit

// Guard And Defer

//If-Else

let canDrink = true
func checkDrinkingAge() {
    
    if canDrink {
        print("Drink allowed")
        //code
        //code
    }
    else {
        print("Not allowed to drink")
    }
}
// sometimes there is too many if-else nested
// the guard will handle the error in first place

let iCanDrink = false

func checkDrinkAge() {
    guard iCanDrink else {
        print("You can't drink")
        return
    }
    
    print("You Can Drink Mate")
}

checkDrinkAge()


//Unwrapping Optionals
var publicName: String? = "Bob"
var publicPhoto: String? = "Bob's Face"
var publicAge: Int? = 20


//not the way to do it

func unwrapOneByOne() {
    if let name = publicName {
        if let photo = publicPhoto {
            if let age = publicAge {
                print("Bob: \(name), \(photo), \(age) ")
            } else {
                print("Age is missing")
            }
        } else {
            print("Photo is missing")
        }
    } else {
        print("Name is missing")
    }
}

unwrapOneByOne()


// Safely Unwrap Multiple Optionals With Else-If
func safelyUnwrapWithElseIf() {
    if let name = publicName, let photo = publicPhoto, let age = publicAge {
        print("Bob: your name is \(name),and photo \(photo), with \(age) years old")
    }
    else {
        print("Something is missing")
    }
}

safelyUnwrapWithElseIf()


//Safely unwrap Multiple Optionals with Guard
func safelyUnwrapWithGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        print("Something is missing")
        return
    }
    
    print("Bob: name: \(name), photo: \(photo), age: \(age)")
}

safelyUnwrapWithGuard()


//Defer
//put off (an action or event) to a later time
func printDefer() {
    defer {
        print("Chill Later")
    }
    
    print("Work First")
}

printDefer()
