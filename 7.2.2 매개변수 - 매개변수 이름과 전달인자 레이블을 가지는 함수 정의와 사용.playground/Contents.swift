import UIKit

// from 과 to 라는 전달인자 레이블이 있으며
// myName 과 name 이라는 매개변수 이름이 있는 sayHello 함수
func sayHello(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "seonho", to: "jieun"))
/* Hello jieun! I'm seonho */
