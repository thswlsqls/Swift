//
//  main.swift
//  Day05
//
//  Created by Kenny on 2021/11/20.
//

import Foundation

// Collection
// - Dictionary
// : Key와 Value로 구성

var scoreDictionary: Dictionary<String, Int> = [String: Int]()
var scoreDictionary1:[String: Int] = [:]
// 데이터 추가
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

print(scoreDictionary)
print(scoreDictionary["관우"]!)

let initializedDictionary: [String:String] = ["name":"James", "gender":"male"]
print(initializedDictionary)

// Set
// : 중복 데이터가 입력 않됨
var oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumber: Set = [2,3,5,7]

print(oddDigits.sorted())

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumber).sorted())

// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumber).sorted())

// Set의 멤버십과 동등 비교
let houseAnimals: Set = ["dog","cat"]
let farmAnimals: Set = ["cow","chicken","sheep","dog","cat"]
let cityAnimals: Set = ["duck","rabbit"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

// ----------------------
// if : 조건문

let someInteger = 90

if someInteger == 100{
    print("100점")
}

if someInteger == 100{
    print("100점")
}else{
    print("100점이 아님")
}

if someInteger < 100{
    print("100점 미만")
}else if someInteger > 100{
    print("100점 초과")
}else{
    print("100점")
}

var isCar = true
var isNew = true

isNew = false

if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

let aNum = 7

if aNum % 2 == 0{
    print("짝수")
}else{
    print("홀수")
}

// Switch 조건문
let personAge = 14

// Before using switch statement
if personAge < 1{
    print("baby")
}else if personAge < 3{
    print("toddler")
}else if personAge < 5{
    print("preschooler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}

// After using switch statement
switch personAge{
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 13..<18: print("teen")
default: print("adult")
}

switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

print(Int.max)

let anotherCharacter: Character = "a"

switch anotherCharacter{
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

// 점수 등급 표시 A ~ F학점
let name = "유비"
let kor = 91
let eng = 97
let math = 95

var tot = 0
var avg: Double = 0

tot = kor + eng + math
avg = Double(tot) / 3

print("이름 : \(name)")
print("국어 : \(kor)")
print("영어 : \(eng)")
print("수학 : \(math)")
print("총점 : \(tot)")
print("평균 : \(avg)")

// 1) if
var grade: String

if avg >= 90{
    grade = "A"
}else if avg >= 80{
    grade = "B"
}else if avg >= 70{
    grade = "C"
}else if avg >= 60{
    grade = "D"
}else{
    grade = "F"
}

// 2) switch

switch avg{
case 90...100:
    grade = "A"
case 80..<90:
    grade = "B"
case 70..<80:
    grade = "C"
case 60..<70:
    grade = "D"
default:
    grade = "F"
}

// 삼항 연산자
grade = avg >= 90 ? "A" :
    avg >= 80 ? "B" :
    avg >= 70 ? "C" :
    avg >= 60 ? "D" : "F"

// 배열과 반복문
var score = [90, 80, 70, 60, 0]
var level = ["A", "B", "C", "D", "F"]

for i in 0..<score.count{
    if avg >= Double(score[i]){
        grade = level[i]
        break
    }
}



print("평균에 대한 학점 : \(grade)")

// ------------------------
// 반복문
// For : For-In Loops

let names = ["Anna", "Alex", "Brian", "Jack"]

print(type(of: names))

for name in names{
    print("Hello, \(name)")
}

for i in 0..<names.count{
    print("Hello, \(names[i])")
}



for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs = ["spider":8, "ant":6, "cat":4]

for (animalName, legCount) in numberOfLegs{
    print("\(animalName) have \(legCount) legs")
}

let seq1 = 1...5
for index in seq1{
    print("\(index) times 5 is \(index * 5)")
}

let seq2 = seq1.reversed()
for index in seq2{
    print("\(index) times 5 is \(index * 5)")
}

let minutes = 60
let minuteInterval = 5

for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
    print(tickMark)
}

let strings = ["First String", "Second String", "Third String", "Fourth String"]

for string in strings{
    if string.starts(with: "F"){
        print(string)
    }
}

for string in strings{
    if string.starts(with: "T"){
        break
    }
    print(string)
}
print("-----------------------")
for string in strings{
    if string.starts(with: "F"){
        continue
    }
    print(string)
}

// While
var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex{
    sum += startIndex
    startIndex += 1
}

print("while : \(sum)")









