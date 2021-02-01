import UIKit

func checkOptionalValue(value optionalValue: Any?) {
    switch optionalValue {
    case .none:
        print("This Optional variable is nil")
    case .some(let value):
        print("Value is \(value)")
    }
}

var myName: String? = "seonho"
checkOptionalValue(value: myName)
/* Value is seonho */

myName = nil
checkOptionalValue(value: myName)
/* This Optional variable is nil */

let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("Large value!! \(value)")
        
    case .some(let value):
        print("Value \(value)")
        
    case .none:
        print("nil")
    }
}

/*
 Value 2
 nil
 Negative value!! -4
 nil
 Large value!! 100
 */
