import UIKit

// 세트의 선언과 생성

var names1: Set<String> = Set<String>()  // 빈 세트 생성
var names2: Set<String> = []     // 빈 세트 생성

// Array와 마찬가지로 대괄호를 사용
var names: Set<String> = ["seonho", "donghae", "hero", "seonho"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 저장
var numbers = [100, 200, 300]
print(type(of: numbers))
/* Array<Int> */

print(names.isEmpty)
/* false */
print(names.count)  // 중복된 값은 허용되지 않아 seonho는 1개만 남음
/* 3 */


// 세트의 사용

print(names.count)
/* 3 */
names.insert("ravi")
print(names.count)
/* 4 */

print(names.remove("donghae"))
/* donghae */
print(names.remove("dindin"))
/* nil */


// 세트의 활용 - 집합연산

let englishClassStudents: Set<String> = ["seonho", "donghae", "hero"]
let koreanClassStudents: Set<String> = ["ravi", "seonho", "hero", "dindin", "jeonghoon"]

// 교집합 {"seonho", "hero"}
let intersectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)

// 여집합의 합(배타적 논리합) {"donghae", "ravi", "dindin", "jeonghoon"}
let symetricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)

// 합집합 {"seonho", "donghae", "hero", "ravi", "dindin", "jeonghoon"}
let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)

// 차집합 {"donghae"}
let subtractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents)

print(unionSet.sorted())
/* ["dindin", "donghae", "hero", "jeonghoon", "ravi", "seonho"] */


// 세트의 활용 - 포함관계 연산

let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)  // 새와 포유류의 합집합

print(새.isDisjoint(with: 포유류))  // 서로 배타적인지
/* true */
print(새.isSubset(of: 동물))   // 새가 동물의 부분집합인가요?
/* true */
print(동물.isSuperset(of: 포유류))   // 동물은 포유류의 전체집합인가요?
/* true */
print(동물.isSuperset(of: 새))     // 동물은 새의 전체집합인가요?
/* true */
