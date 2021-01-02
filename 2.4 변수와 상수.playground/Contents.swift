import SwiftUI

/*
// 변수
var name: String = "seonho"
var age: Int = 36
var job = "actor"   // 타입 추론이 사용 됨
var height = 183.5  // 실수 타입의 타입 추론은 어떤 타입이 지정되는지 확인
print("\(type(of: height))")
// 출력 값 : Double
age = 99
job = "Writer"
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터입니다.")
// 출력 값 : 저의 이름은 seonho이고, 나이는 99세이며, 직업은 Writer입니다. 비밀이지만, 키는 183.5센티미터입니다.
*/


// 상수
let name: String = "seonho" // 차후 변경하지 않는 값은 상수로 선언
var age: Int = 36
var job = "actor"   // 타입 추론이 사용 됨
let height = 183.5  // 실수 타입의 타입 추론은 어떤 타입이 지정되는지 확인
print("\(type(of: height))")
// 출력 값 : Double
age = 99    // 변수는 값을 변경해줄 수 있음
job = "Writer"    // 값을 변경할 때는 기존과 같은 타입의 값을 할당해주어야 함
name = "jieun"    // 상수로 선언된 값을 변경할 수 없음. 오류가 발생함
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터입니다.")
// 출력 값 : 저의 이름은 seonho이고, 나이는 99세이며, 직업은 Writer입니다. 비밀이지만, 키는 183.5센티미터입니다.
