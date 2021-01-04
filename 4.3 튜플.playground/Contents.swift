import UIKit

/*
// 튜플 요소 이름 지정
 
// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("seonho", 36, 183.5)

// 인덱스를 통해서 값을 빼 올 수 있음
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
/* 이름: seonho, 나이: 36, 신장: 183.5 */

person.1 = 99   // 인덱스를 통해 값을 할당할 수 있음
person.2 = 178.5

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
/* 이름: seonho, 나이: 99, 신장: 178.5 */
*/



// 튜플 별칭 지정

// String, Int, Double 타입을 갖는 튜플
var person: (name: String, age: Int, height: Double) = ("seonho", 36, 183.5)

// 요소 이름을 통해서 값을 빼 올 수 있음
print("이름: \(person.name), 나이: \(person.age), 신장: \(person.height)")
/* 이름: seonho, 나이: 36, 신장: 183.5 */
person.age = 99        // 요소 이름을 통해 값을 할당할 수 있음
person.2 = 178.5    // 인덱스를 통해서도 값을 할당할 수 있음

// 기존처럼 인덱스를 이용하여 값을 빼 올 수도 있음
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
/* 이름: seonho, 나이: 99, 신장: 178.5 */
