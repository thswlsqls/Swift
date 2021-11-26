//
//  main.swift
//  Day04
//
//  Created by Kenny on 2021/11/14.
//

import Foundation

/*
 
 Collection(컬렉션) : 여러 값들을 묶어서 하나의 변수로 사용
 - Array : 순서가 있는 리스트 컬렉션
 - Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 - Set : 순서가 없고, 중복된 데이터는 추가 되지 않습니다, 집합연산
 
 */

// Array
// 비어 있는 Int Array 생성
var intVaraible: Array<Int> = Array<Int>()
var intVaraible1: [Int] = [1,2,3]

// 배열에 data넣기
intVaraible.append(1)
intVaraible.append(10)
intVaraible.append(100)
//intVaraible.append(101.1)

print(intVaraible.contains(10))
print(intVaraible.contains(99))

print(intVaraible)

// for문을 이용하여 array에 data 넣기 (1~100)

var intVariable2: [Int] = []

//
//intVariable2.append(1)
//intVariable2.append(2)
//intVariable2.append(3)

for i in 1...100{
    intVariable2.append(i)
}

print(intVariable2)

// 배열의 data 가져오기
print(intVaraible[1])
print(intVaraible[0...1]) // index를 범위연산자로 출력

// 배열에서 필요없는 자료 삭제하기
intVaraible.remove(at: 0) // 0번지 data삭제
print(intVaraible)

// 배열에서 맨 마지막 자료 삭제하기
intVaraible.removeLast()
print(intVaraible)

// 배열 전체 삭제하기
intVaraible.removeAll()
print(intVaraible)

// 배열의 data갯수 확인하기
print("count if integers : \(intVaraible.count)")

// Type에 따른 배열 선언
var doubleArray: [Double] = []
var stringArray: [String] = []

// 불변 Array
let intVariable3: [Int] = [1,2,3]
//intVariable3.append(10)
//intVariable3.removeAll()

// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print(anotherThreeDoubles)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// threeDoubles와 antherThreeDoubles의 index별의 합계(더하기)를 구하기 sixDoubles2라는 배열 생성하기
var sixDoubles2: [Double] = []

for i in 0..<threeDoubles.count{
    sixDoubles2.append(threeDoubles[i] + anotherThreeDoubles[i])
}

print(sixDoubles2)

// 문자를 이용한 배열의 생성

var shoppingList: [String] = ["Eggs","Milk"]
print(shoppingList)

var shoppingList1: [String] = [String](repeating: "abc", count: 3)
print(shoppingList1)

// 문자열 배열의 출력
for i in 0..<shoppingList.count{
    print(shoppingList[i])
}

for i in shoppingList{
    print(i)
}

// 배열의 인덱스 갯수 확인
print("The shopping list contains \(shoppingList.count) items.")

// 배열이 비어 있느지 확인
if shoppingList.isEmpty{
    print("The shopping list is empty.")
}else{
    print("The shopping list is not empty.")
}

// 배열의 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Baking Powder"]
print(shoppingList.count, shoppingList)

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList.count, shoppingList)

print(shoppingList[0])

// 배열의 특정 위치 데이터 변경 및 제거
shoppingList[4...6] = ["Bananas", "Apples"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치에 데이터 추가
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList.count, shoppingList)

// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated(){
    print("Item Index: \(index) / value : \(value) ")
}

// 배열의 합계 구하기

let arr = [23, 42, 78, 91, 57, 68, 52, 26, 15, 72]

var tot = 0

for i in arr{
    tot += i
}
print("Total : \(tot)")

// ----------------
tot = 0

for i in 0..<arr.count{
    tot += arr[i]
}
print("Total : \(tot)")

// arr의 최대값 찾기

var max = arr[0]

for i in arr{
    if max < i{
        max = i
    }
}
print("최대값 : \(max)")

// -----------------
max = arr[0]

for i in 0..<arr.count{
    if max < arr[i]{
        max = arr[i]
    }
}
print("최대값 : \(max)")

print(arr.max()!)

