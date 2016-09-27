//: Playground - noun: a place where people can play

import UIKit

let toDivide = 13195//600851475143

func divisibleBy(_ divisor:Int) -> ((Int) -> Bool) {
    return { (dividend) -> Bool in
        return dividend % divisor == 0
    }
}

func canDivide(_ dividend:Int) -> ((Int) -> Bool) {
    return { (divisor) -> Bool in
        return dividend % divisor == 0
    }
}

func isEven(_ num:Int) -> Bool {
    return divisibleBy(2)(num)
}

func isOdd(_ num:Int) -> Bool {
    return !isEven(num)
}

func isPrime(_ num:Int) -> Bool {
    if isOdd(num) {
        return Array(2..<num).filter(isOdd).filter(canDivide(num)).count == 0
    }
    return false
}

