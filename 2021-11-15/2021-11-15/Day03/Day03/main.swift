//
//  main.swift
//  Day03
//
//  Created by Kenny on 2021/11/13.
//

import Foundation

// 비교 연산자

print(1 == 1)
print(2 != 1)
print(2 > 1)
print(2 < 1)
print(1 >= 1) // => (x)
print(2 <= 1)

let name = "world"

print(name == "World")


if name == "World"{
    print("Hello world!")
}else{
    print("Nothing!")
}

print((1, "zebra") < (2, "apple"))
print((3,"apple") < (3, "bird"))
print((4, "dog") == (4,"dog"))
//print(("blue", false) < ("purple", true)) // Bool은 비교 대상이 않된다.

// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight: Int

if hasHeader == true{
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 20
}

print(rowHeight)

// 삼항 조건 연산자
let contentHeight1 = 40
let hasHeader1 = true
let rowHeight1 = contentHeight1 + (hasHeader1 ? 50 : 20)
print(rowHeight1)

// Nil병합 연산자
let defaultColorName = "red"
var userDefinedColorName: String? // nil값 적용

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)

// 범위 연산자

for i in 1...10{
    print(i)
}

var sum: Int = 0
for i in 1...10{
    sum += i
}

print("합계는 \(sum)입니다.")

// 구구단 2단

for i in 1...9{
    print("2 X \(i) = \(2*i)")
}

for i in 1..<10{
    print("2 X \(i) = \(2*i)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
print(names.count)

for i in 0..<names.count{
    print("Person \(i+1) is called \(names[i])")
}

var cnt = 0
for i in names{
    print("Person \(cnt+1) is called \(i)")
    cnt+=1
}

// 논리 연산자
// 논리 부정 연산자

let allowedEntry = false

if !allowedEntry{
    print("Access Denied")
}

// 논리 곱 연산자 (And)
let enteredDoorCode = true
let passRetinaScan = false

if enteredDoorCode && passRetinaScan{
    print("Welcome!")
}else{
    print("Access Denied!")
}

// 논리 합 연산자 (OR)
if enteredDoorCode || passRetinaScan{
    print("Welcome!")
}else{
    print("Access Denied!")
}

// Optional
// nil값을 포함 할수 있는 변수 선언

let constantNum = 100
//constantNum = nil // Error

let optionalConstant: Int! = nil
let optionalConstnat1: Int? = nil

var constantNum1: Int! = 100
print(constantNum1 + 10)

constantNum1 = nil
//print(constantNum1 + 1)

// Optional Unwrapping
var myName: String? = nil


if let name: String = myName{
    print("\(name) : myName")
}else{
    print("myName is nil")
}

// Force Unwrapping
myName = "kenny"
print(myName!)






















































