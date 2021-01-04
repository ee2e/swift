import UIKit

// 배열의 선언과 생성

// 대괄호를 사용하여 배열임을 표현
var names1: Array<String> = ["seonho", "donghae", "hero", "jieun"]

// 위 선언과 정확히 동일한 표현임. [String]은 Array<String>의 축약 표현
var names2: [String] = ["seonho", "donghae", "hero", "jieun"]

var emptyArray1: [Any] = [Any]()     // Any 데이터를 요소로 갖는 빈 배열을 생성함
var emptyArray2: [Any] = Array<Any>()       // 위 선언과 정확히 같은 동작을 하는 코드

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있음
var emptyArray3: [Any] = []
print(emptyArray3.isEmpty)
/* true */
print(names2.count)
/* 4 */



// 배열의 사용
print(names2[2])
/* hero */
names2[2] = "dongwon"
print(names2[2])
/* dongwon */
print(names2[4])    // 인덱스의 범위를 벗어났기 때문에 오류가 발생

names2[4] = "chanwon"    // 인덱스의 범위를 벗어났기 때문에 오류가 발생
names2.append("chanwon")    // 마지막에 chanwon이 추가됨
names2.append(contentsOf: ["kai", "siwoomin"])  // 맨 마지막에 kai와 siwoomin이 추가됨
names2.insert("joohyuk", at: 2)     // 인덱스 2에 삽입
names2.insert(contentsOf: ["dindin", "ravi"], at: 5)    // 인덱스 5의 위치에 dindin과 ravi가 삽입됨

print(names2[4])
/* jieun */
print(names2.firstIndex(of: "seonho"))
/* 0 */
print(names2.firstIndex(of: "jeonghoon"))
/* nil */
print(names2.first)
/* seonho */
print(names2.last)
/* siwoomin */

let firstItem: String = names2.removeFirst()
let lastItem: String = names2.removeLast()
let indexZeroItem: String = names2.remove(at: 0)

print(firstItem)
/* seonho */
print(lastItem)
/* siwoomin */
print(indexZeroItem)
/* donghae */
print(names2[1 ... 3])
/* ["dongwon", "jieun", "dindin"] */
