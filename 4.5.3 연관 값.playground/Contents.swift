import UIKit

// 연관 값을 갖는 열거형
enum MainDish2 {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}

var dinner2: MainDish2 = MainDish2.pasta(taste: "크림")     // 크림 파스타
dinner2 = .pizza(dough: "치즈크러스트", topping: "불고기")    // 불고기 치즈크러스트 피자
dinner2 = .chicken(withSauce: true)  // 양념 통닭
dinner2 = .rice  // 밥


// 여러 열거형의 응용

enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case peperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)
