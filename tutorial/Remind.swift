import UIKit

protocol Test {
    var sipmleValue: String {get}
    
    mutating func simpleFunction() -> String
}

class Custom: Test {
    var sipmleValue: String = ""
    
    func simpleFunction() -> String {
        return "Hi"
    }
}

extension Int: Test {
    var sipmleValue: String {
        "eew"
    }
    
    mutating func simpleFunction() -> String {
        return "\(self)"
    }
}

var one = 1
print(one.simpleFunction())
