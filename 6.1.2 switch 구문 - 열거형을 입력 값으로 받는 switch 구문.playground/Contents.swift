import UIKit

enum School {
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School = School.university

switch 최종학력 {
case .primary:
    print("최종학력을 유치원입니다.")
case .elementary:
    print("최종학력을 초등학교입니다.")
case .middle:
    print("최종학력을 중학교입니다.")
case .high:
    print("최종학력을 고등학교입니다.")
case .college, .university:
    print("최종학력을 대학(교)입니다.")
case .graduate:
    print("최종학력을 대학원입니다.")
}

/* 최종학력을 대학(교)입니다. */
