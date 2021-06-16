import UIKit

class Person {
    var age = 16

    
    init(age:Int) {
        self.age = age
    }
    
    func printAge() {
        print(age)
    }
}

class Men : Person {
    
    var mbti : String {
        get {
            return String(self.age + 100 / 10)
        }
    }
    
    override func printAge() {
        print("here is child Class")
        super.printAge()
    }
    
}

let hyune = Men(age: 21)
hyune.printAge()
print(hyune.mbti)

