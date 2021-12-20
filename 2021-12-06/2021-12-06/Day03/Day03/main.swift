//
//  main.swift
//  Day03
//
//  Created by Kenny on 2021/12/05.
//

import Foundation

// 함수
func sumFunction(a: Int, b: Int) -> Int{
    return (a+b)
}

var sumResult = sumFunction(a: 10, b: 20)
print(sumResult)

// Closure
var sumClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sumClosure(10, 20)
print(sumResult)


// Random Number

var randNum = Int.random(in: 1...9)
print(randNum)

print("------------------")
func getNum() -> String{
    return String(Int.random(in: 1...9))
}

print(getNum())
print(getNum())
print(getNum())








