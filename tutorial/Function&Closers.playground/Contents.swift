import UIKit

func appendName(name: String) -> String {
    return "welcome to swift tutorial \(name)!"
}
print(appendName(name: "조현"))

func sum(numbers: [Int]) -> (min:Int, max:Int) {
    var min = numbers[0]
    for n in numbers {
        if(n < min) {
            min = n
        }
    }
    var max = numbers[0]
    for n in numbers {
        if(n > max) {
            max = n
        }
    }
    return (min, max)
}
print("최소와 최대를 구하는 함수의 결과 ", sum(numbers: [1,2,3,4,5,6,7,8,9,10]))

func inNumber(numbers: [Int], subFunc: (Int) -> Bool) -> Bool {
    for n in numbers {
        if(subFunc(n)) {
            return true
        }
    }
    return false
}
print("함수에 함수를 넘겨주기", inNumber(numbers: [1,3,5,7,10], subFunc: { n in
    return n % 2 == 0
}))

let numbers = [1,2,3,4,5,6,7,8]
numbers.forEach({n in
    print(n)
})


let numbers2 = numbers.map({n in n*2})
print(numbers2)

let numbers3 = numbers.filter({n in n % 2 == 0})
print(numbers3)

let numbers4 = numbers.map({ $0 * 5})
print(numbers4
)

