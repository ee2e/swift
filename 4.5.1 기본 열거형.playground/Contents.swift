import UIKit

// School 열거형의 선언

enum School1 {
    case primary        // 유치원
    case elementary     // 초등
    case middle         // 중등
    case high           // 고등
    case college        // 대학
    case university     // 대학교
    case graduate       // 대학원
}

enum School {
    case primary, elementary, middle, high, college, university, graduate
}



// School 열거형 변수의 생성 및 값 변경

var highestEducationLevel1: School = School.university

// 위 코드와 정확히 같은 표현
var highestEducationLevel2: School = .university

// 같은 타입인 School 내부의 항목으로만 highestEducationLevel의 값을 변경해줄수 있음
highestEducationLevel2 = .graduate
