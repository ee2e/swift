import UIKit

var array: [Int] = [0, 1, 2, 3, 4]
var set: Set<Int> = [0, 1, 2, 3, 4]
var dictionary: [String: Int] = ["a": 1, "b": 2, "c": 3]
var string: String = "string"

print(array.randomElement())    // 임의의 요소
/* 1 */
print(array.shuffled())     // 뒤죽박죽된 배열 - array 내부의 요소는 그대로 있음
/* [1, 4, 0, 3, 2] */
print(array)
/* [0, 1, 2, 3, 4] */
array.shuffle()     // array 자체를 뒤죽박죽으로 뒤섞기
print(array)    // 뒤죽박죽된 배열
/* [1, 4, 2, 3, 0] */

print(set.shuffled())   // 세트를 뒤섞으면 배열로 반환
/* [0, 2, 3, 4, 1] */
//set.shuffle()   // 오류 발생. 세트는 순서가 없기 때문에 스스로 뒤섞을 수 없음
print(dictionary.shuffled())    // 딕셔너리를 뒤섞으면 (키, 값)이 쌍을 이룬 튜플의 배열로 반환해줌
/* [(key: "c", value: 3), (key: "a", value: 1), (key: "b", value: 2)] */
print(string.shuffled())    // String도 컬렉션임
/* ["g", "n", "s", "i", "t", "r"] */
