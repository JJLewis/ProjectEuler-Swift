//: Playground - noun: a place where people can play

import UIKit

func divisibleBy(_ divisor:Int) -> ((Int) -> Bool) {
    return { (dividend:Int) -> Bool in
        return dividend % divisor == 0
    }
}

func isEven(_ num:Int) -> Bool {
    return divisibleBy(2)(num)
}

func sumLast2(_ arr:[Int]) -> Int {
    let length = arr.count
    return arr[length - 1] + arr[length - 2]
}

func fibsToMax(_ max:Int, acc:[Int] = [1,2]) -> [Int] {
    let next = sumLast2(acc)
    if max < next {
        return acc
    }
    return fibsToMax(max, acc: acc + [next])
}

let fibsTo4Mil = fibsToMax(4000000)
let evenOnly = fibsTo4Mil.filter(isEven)
let sum = evenOnly.reduce(0, +)
print(sum)

