//
//  main.swift
//  Day01
//
//  Created by Kenny on 2021/11/28.
//

import Foundation

/*
 값 타입과 참조 타입
 Class
 - 전통적인 OOP관점에서의 클래스
 - 상속이 가능
 - 1) Property(Field)
 - 2) 생성자(constructor)
 - 3) Method(Function)
 - 참조 형식으로 데이터 처리 (Call by reference: Data값을 전달할때 메모리 위치를 전달)
 
 
 Struct
 - 1) Property(Field)
 - 2) 생성자(constructor)
 - 3) Method(Function)
 - 값 형식으로 데이터 처리 (Call by value: Data값을 전달할때 값을 복사해서 전달)

 */

// Class와 Struct의 비교 : Instance를 복사하여 사용하는 경우

struct ValueType{
    var property = 1
}

class ReferenceType{
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")
print("second struct instance property : \(secondStructInstance.property)")

// ----------------

let firstClassInstance = ReferenceType()
var secondClassInstance = firstClassInstance
secondClassInstance.property = 2

print("first class instance property : \(firstClassInstance.property)")
print("second class instance property : \(secondClassInstance.property)")


