import UIKit

//Optional Chainings

let labelColor = UILabel().highlightedTextColor?.cgColor

//Design Class
class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

//Design Another Class
class Apartment {
    var human: Human? = nil
}

//Initialize
var seoulApartment = Apartment()
seoulApartment.human = Human(name: "Bobby Lee")

seoulApartment.human?.sayHello()

//everything that comes after an optional is going to be optional and can return nil

//Implicit Unwrapping
let name = seoulApartment.human?.name

print(name as Any)

//Force Unwrapping, if there is no value it's going to crash - Unsafe
var NYCApartment = Apartment()
//NYCApartment.human!.name

if let resident = name {
    print(resident)
}
else {
    print("No name available")
}

//Implicit / Safe Unwrapping
var lisbonApartment = Apartment()
lisbonApartment.human = Human(name: "John")
let lisbonResident = lisbonApartment.human?.name

if let resident = lisbonResident {
    print(resident)
}
else {
    print("There is no name available")
}



