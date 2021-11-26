//
//  main.swift
//  Day02
//
//  Created by Kenny on 2021/11/07.
//

import Foundation

// 문자열
var variableString = "Horse"
//variableString = variableString + " and carriage"
variableString += " and carriage"
print(variableString)

var endString = "!"
variableString.append(endString)
print(variableString)

let mutiplier = 3
let message = "\(mutiplier) times 2.5 is \(Double(mutiplier) * 2.5)"
print(message)

// 문자 길이
let str = "12345,6789"
print("str has \(str.count) characters")

if str.count == 0{
    print("Data가 없습니다!")
}else{
    print("Data는 \(str)입니다.")
}

// Any, nil
/*
 Any : Swift의 모든 타입을 지칭하는 키워드
 */

// Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능 합니다."
print(someAny)
someAny = 123.12
print(someAny)

let someAny1: Double
someAny1 = someAny as! Double //변환

// nil
/*
 - nil은 없음을 의미하는 키워드
 - 다른 언어에서는 null
 */

// Tuple
// Tuple사용전 선언 및 출력방법
var dialCode = 82
var isoCode = "KR"
var name = "Korea"

print(dialCode, isoCode, name)

// Tuple의 사용
var country = (82, "KR", "Korea")

print(country.0, country.1, country.2)

var country1 = (dialCode1:82, isoCode1: "KR", name1: "Korea")
print(country1.dialCode1)
print(country1.0)


let person = (name: "James", address: "201 Main Street", age: 35)
print("\(person.name) lives at \(person.address) and is \(person.age) years old")
// James lives at 201 Main Street and is 35 years old

// Type 별칭
// : 기본 Type이든 사용자 Type이든 별칭을 사용할 수 있음.

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 20
var year: YourInt = 2020

year = age
print(year)

typealias person1 = (name: String, height: Int, marriage: Bool) // Tuple로 생성
var t1: person1 = ("유비", 180, true)
var t2: person1 = ("관우", 185, false)

print(t1.name)

/*
 Tuple을 이용하여 직사각형의 넓이와 둘레를 구현
 - 직사각형의 속성 : 이름(name), 가로(w), 세로(h), 넓이(area), 둘레(border)
 */

typealias Rectangle = (name: String, w:Int, h:Int, area:Int, border:Int)

var r1: Rectangle = ("직사각형", 5, 6, 0, 0)
var r2: Rectangle = ("직사각형", 15, 7, 0, 0)

r1.area = r1.w * r1.h
r1.border =  (r1.w + r1.h) * 2
print(r1)

r2.area = r2.w * r2.h
r2.border =  (r2.w + r2.h) * 2
print(r2)

// -------------------/
/*
 연산자
 */
// 할당 연산자
let a = 2

// Tuple을 이용한 할당 연산자
let x = 1
let y = 2
print(x, y)

let (x1, y1) = (1,2)
print(x1, y1)

var (x2, y2) = (3, "Kim")
print(x2, y2)

// 사칙 연산자
print(1 + 2)
print(3 - 2)
print(4 * 3)
print(10 / 3) // 정수 나눗셈
print(10.0 / 3.0) // 실수 나눗셈
print(10.0 / 3) // 실수 나눗셈
print(Double(10) / 3) // 실수 나눗셈
print(9 % 4) // 나머지

// num이 짝수 인지 홀수 인지 판별
var num = 9

if num % 2 == 0{
    print("짝수 입니다.")
}else{
    print("홀수 입니다.")
}

// num이 5의 배수 인지 판별
num = 12
if num % 5 == 0{
    print("5의 배수 입니다.")
}else{
    print("5의 배수가 아닙니다.")
}

// num을 10으로 나눈 몫과 나머지를 출력하시오
// 12를 10으로 나눈 몫은 1이고 나머지는 2입니다.
print("\(num)을 10으로 나눈 몫은 \(num / 10)이고 나머지는 \(num % 10)입니다.")
