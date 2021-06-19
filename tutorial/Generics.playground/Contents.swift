import UIKit

func swapInteger(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var n1 = 100
var n2 = 1000

swapInteger(&n1, &n2)

print("매개변수를 수정해도 원본 변수가 바뀌네요? \(n1) \(n2)")

// 변수 타입을 공통적으로 적용하는 T 대신 두 변수의 타입은 같아야 함
func swapTwoParam<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var t1 = "조현"
var t2 = "강정호"

swapTwoParam(&t1, &t2)

print("타입이 다른 매개변수도 바꿔보기 \(t1) \(t2)")
