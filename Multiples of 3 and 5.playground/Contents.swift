//: Playground - noun: a place where people can play

import UIKit

func divisibleBy(divisor:Int) -> ((Int) -> Bool) {
    return { (dividend:Int) -> Bool in
        return dividend % divisor == 0
    }
}

func by3(_ dividend:Int) -> Bool {
    return divisibleBy(divisor: 3)(dividend)
}

func by5(_ dividend:Int) -> Bool {
    return divisibleBy(divisor: 5)(dividend)
}

let oneToThousand = Array(1..<1000)
let multiplesOf3Or5 = oneToThousand.filter {by3($0) || by5($0)}
let sum = multiplesOf3Or5.reduce(0, +)

print(sum)