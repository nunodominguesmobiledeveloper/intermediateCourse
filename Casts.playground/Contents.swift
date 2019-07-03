import UIKit

//Type Casting
let label = UILabel() as UIView

//Design Class
class Human {
    func introduce() {
        print("Hi, I'm Human")
    }
}

//Design SubClass
class Korean: Human {
    func singGangnamStyle() {
        print("Oppa Gangnam Style")
    }
}

let bob = Korean()
bob.introduce()
bob.singGangnamStyle()

//Type Casting
let newBob = bob as Human //upcasting

//Design SubClass
class Japanese: Human {
    func doNinja() {
        print("Yahhhh")
    }
}


//Upcasting Normal types
var name = "Bob" as Any
var number = 12 as Any

var newArray = [name, number]

//Downcasting only occurs after upcasting
//Downcasting -> specific

let newValue = newArray[1] as! Int //normal type
//let anotherValue = newArray[1] as! String   // it may fail if you do as! for a different type
print(newValue)

//Implicit Downcast
let newNewValue = newArray[0] as? Int
let newNewNewValue = newArray[1] as? Int


