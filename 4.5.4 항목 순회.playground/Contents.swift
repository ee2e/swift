import UIKit


// CaseIterable 프로토콜을 활용한 열거형의 항목 순회

enum School2: CaseIterable {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}

let allCases2: [School2] = School2.allCases
print(allCases2)
/* [School.primary, School.elementary, School.middle, School.high, School.college, School.university, School.graduate */


// 원시값을 갖는 열거형의 항목 순회

enum School1: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let allCases1: [School1] = School1.allCases
print(allCases1)
/* [School.primary, School.elementary, School.middle, School.high, School.college, School.university, School.graduate */


// available 속성을 갖는 열거형의 항목 순회

enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    @available(iOS, obsoleted: 12.0)
    case graduate = "대학원"
    
    static var allCases: [School] {
        let all: [School] = [.primary, .elementary, .middle, .high, .college, .university]
        
        #if os(iOS)
        return all
        #else
        return all + [.graduate]
        #endif
    }
}

let allCases: [School] = School.allCases
print(allCases)     // 실행환경에 따라 다른 결과
/* [School.primary, School.elementary, School.middle, School.high, School.college, School.university */


// 연관 값을 갖는 열거형의 항목 순회

enum PastaTaste: CaseIterable {
    case cream, tomato
}

enum PizzaDough: CaseIterable {
    case cheeseCrust, thin, original
}

enum PizzaTopping: CaseIterable {
    case peperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
    
    static var allCases: [MainDish] {
        return PastaTaste.allCases.map(MainDish.pasta) + PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in result + PizzaTopping.allCases.map { (topping) -> MainDish in MainDish.pizza(dough: dough, topping: topping)}}
            + [true, false].map(MainDish.chicken)
            + [MainDish.rice]
    }
}

print(MainDish.allCases.count)
/* 14 */
print(MainDish.allCases)    // 모든 경우의 연관 값을 갖는 케이스 컬렉션
