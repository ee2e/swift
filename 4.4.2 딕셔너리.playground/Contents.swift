import UIKit

// 딕셔너리의 선언과 생성

// typealias를 통해 조금 더 단순하게 표현할 수 있음
typealias StringIntDictionary = [String: Int]

// 키는 String, 값은 Int 타입인 빈 딕셔너리 생성
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

// 위 선언과 같은 표현. [String: int]는 Dictionary<String, Int>의 축약 표현
var numberForName: [String: Int] = [String: Int]()

// 위 코드와 같은 동작을 함
var numberForName: StringIntDictionary = StringIntDictionary()

// 딕셔너리의 키와 값 타입을 정확히 명시해줬다면 [:]만으로도 빈 딕셔너리 생성 가능
var numberForName: [String: Int] = [:]

// 초깃값을 주어 생성해줄 수도 있음
var numberForName: [String: Int] = ["seonho" : 36, "hero": 31, "donghae": 36]

print(numberForName.isEmpty)
/* false */
print(numberForName.count)
/* 3 */



// 딕셔너리의 사용

print(numberForName["seonho"])
/* 36 */
print(numberForName["jieun"])
/* nil */

numberForName["seonho"] = 100
print(numberForName["seonho"])
/* 100 */

numberForName["max"] = 999      // max라는 키로 999라는 값을 추가해줌

print(numberForName.removeValue(forKey: "seonho"))
/* 36 */

// 위에서 seonho 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환됨
// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있음
print(numberForName.removeValue(forKey: "seonho"))
/* nil */

// seonho 키에 해당하는 값이 없으면 기본으로 0이 반환
print(numberForName["seonho", default: 0])
/* 0 */
