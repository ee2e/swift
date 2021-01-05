import UIKit

enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")
/* 저의 최종학력은 대학교 졸업입니다. */

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")
/* 오늘은 금요일입니다. */


// 열거형의 원시 값 일부 지정 및 자동처리

enum School2: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college
    case university
    case graduate
}

let highestEducationLevel2: School2 =  School2.university
print("저의 최종학력은 \(highestEducationLevel2.rawValue) 졸업입니다.")
/* */

print(School.elementary.rawValue)
/* 초등학교 */

enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")
/* 0, 1, 2, 10 */


// 원시 값을 통한 열거형 초기화
let primary = School2(rawValue: "유치원")  // primary
let graduate = School2(rawValue: "석박사") // nil

let one = Numbers(rawValue: 1)      // one
let three = Numbers(rawValue: 3)    // nil
