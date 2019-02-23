import UIKit

//Error Handling

let height = 240

//Design Error (1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

//Call Function (2/3)
func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy")
    }
}

//Handle Error (3/3)
do {
    try checkHeightError(height: 111)
} catch HeightError.maxHeight {
    print("You are too tall")
} catch HeightError.minHeight {
    print("You are too small")
}


//Error Handling with Object Initialization

//Design Error (1/3)

enum NameError: Error {
    case noName
}

//Call Class (2/3)
class Course {
    var name: String
    
    init(name: String) throws {
        if name.isEmpty {
            throw NameError.noName
        } else {
            self.name = name
            print("You have created an object")
        }
    }
}

//Handle Error (3/3)

do {
    let course = try Course(name: "Swift Course")
    print(course.name)
} catch NameError.noName {
    print("Make sure you enter the name of course")
}


//try vs try? vs try!
//try - you have to use inside docatch
//try? - throw optional or nil
//try! - is going to throw an crash if there is an error

let newCourse = try? Course(name: "exp")

print(newCourse?.name ?? "")
