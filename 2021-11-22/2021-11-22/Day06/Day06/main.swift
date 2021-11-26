//
//  main.swift
//  Day06
//
//  Created by Kenny on 2021/11/21.
//

import Foundation

// while

var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex{
    sum += startIndex
    startIndex += 1
}

print("while : \(sum)")

// 1부터 100까지의 짝수들의 합

// Method-1
startIndex = 1
sum = 0

while startIndex <= 100{
    if startIndex % 2 == 0{
        sum += startIndex
    }
    startIndex += 1
}
print("while : \(sum)")

// Method-2
startIndex = 2
sum = 0

while startIndex <= 100{
    sum += startIndex
    startIndex += 2
}
print("while : \(sum)")

// Exercise
// 더하기 할 숫자들의 갯수를 입력받아 정한뒤 해당 갯수만큼의 숫자들을 입력받아 합계 구하기


//var sumNum = 0
//
//print("몇개의 숫자를 더할까요?", terminator: "")
//var inpNum = Int(readLine()!)
//
//if let inpNum1: Int = inpNum{
//    print("\(inpNum1)개의 숫자를 입력 하세요!")
//
//    for _ in 1...inpNum1{
//        let ii = Int(readLine()!)
//        sumNum += ii!
//    }
//    print("입력한 숫자의 합은 \(sumNum)입니다.")
//}else{
//    print("Input value is wrong!")
//}
//
//// Exercise
///*
// Enter an integer(0~9) : 12345678
// Sum of digits = 36
// */
//
//var repNum = 0 // 몫
//var remainder = 0 // 나머지값
//var sumNo = 0 // 누적합계
//
//print("Enter an integer(0~9) :", terminator: "")
//var inpNum2 = Int(readLine()!)
//if var inpNum3: Int = inpNum2{
//    while inpNum3 != 0 {
//        remainder = inpNum3 % 10
//        sumNo += remainder
//        inpNum3 /= 10
//    }
//    print("Sum of digits = \(sumNo)")
//}else{
//    print("Input value is wrong!")
//}
//
// --------------------
// 함수
// ----------------------

func integerSum(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

print(integerSum(num1: 9, num2: 10))

func greet(person: String) -> String{
    let greeting = "Hello, \(person)!"
    return greeting
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

// Parameter가 없는 함수
func sayHelloWorld() -> String{
    return "Hello, World!"
}

print(sayHelloWorld())

// 복수의 파라미터를 사용하는 함수
func greet1(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted{
        return "\(person) Bye!"
    }else{
        return "\(person) Hello!"
    }
}

print(greet1(person: "Tim", alreadyGreeted: true))
print(greet1(person: "Tim", alreadyGreeted: false))

//_로 사용하기
func buildAddress(_ name: String, address: String, city: String, 우편번호 postalCode: String, country: String?="USA") -> String{
    return """
        \(name)
        \(address)
        \(city)
        \(postalCode)
        \(country ?? "")
        """
}

print(buildAddress("John Doe", address: "5 Covington Square", city: "Birmingham", 우편번호: "0123"))
print(buildAddress("John Doe", address: "5 Covington Square", city: "Birmingham", 우편번호: "0123", country: "Korea"))
print(buildAddress("John Doe", address: "5 Covington Square", city: "Birmingham", 우편번호: "0123", country: nil))

// 함수의 매개변수 기본값

func greeting(friend: String, me: String = "조조"){
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "유비", me: "장비")
greeting(friend: "장비")

// 가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "초선", friends: "손견","손책","장양"))
print(sayHelloToFriends(me: "조조"))

// 복수의 값을 반환하는 함수
// 튜플을 함수의 반환 값으로 사용

func getCountry() -> (dialCode: Int, isoCode: String, name: String){
    let country = (dialCode: 82, isoCode: "KR", name: "Korea")
    return country
}

let ret = getCountry()
print(ret)
print(ret.dialCode)

// 시작 숫자 부터 끝 숫자까지의 합계를 구하는 함수 만들기
//func addRange(start: Int, end: Int) -> String{
//    var result: Int = 0
//    for i in start...end{
//        result += i
//    }
//    return "\(start)부터 \(end)까지의 합은 \(result) 입니다."
//}

func addRange(_ start: Int, _ end: Int) -> String {
    var result = 0
    var start1 = start
    while start1 <= end{
        result += start1
        start1 += 1
    }
    return "\(start)부터 \(end)까지의 합은 \(result) 입니다."
}

print(addRange(1, 100))
// 1부터 100까지의 합은 5050 입니다.

func decisionRange(type: String, start: Int, end: Int) -> String{
    var result = ""
    var charType = ""
    var sum = 0
    if type == "even" || type == "odd"{
        for i in start...end{
            if i % 2 == 0 && type == "even"{
                charType = "짝수"
                sum += i
            }else if i % 2 == 1 && type == "odd"{
                charType = "홀수"
                sum += i
            }
        }
        result = "\(start)부터 \(end)까지의 수중 \(charType)의 합은 \(sum)입니다."
    }else{
        result = "입력된 항목이 잘못 되었습니다."
    }
    return result
}


print(decisionRange(type: "odd", start:1, end:100)) // even: 짝수, odd: 홀수, 다른 글자 : Error표시
// 1부터 100까지의 수중 짝수의 합은 2550 입니다.

/*
 Overloading : 함수의 이름은 중복되도 parameter의 갯수로 구분이 가능
 */

// 도형의 면적, 둘레를 구하는 함수를 구현하세요
// 원
func shape(_ r:Double){
    let pi = 3.14
    let area = pi * r * r
    let border = 2 * pi * r
    print("원 : \(area), \(border)")
}
// 사각형
func shape(_ w:Int, _ h:Int){
    let area = w * h
    let border = (w+h) * 2
    print("직사각형 : \(area), \(border)")
}
// 직각삼각형
func shape(_ w: Int, _ h: Int, _ l: Int){
    let area = w*h/2
    let border = w+h+l
    print("직각삼각형 : \(area), \(border)")
}

shape(5) // 원
shape(5,6) // 직사각형
shape(5,6,7) // 직각삼각형
