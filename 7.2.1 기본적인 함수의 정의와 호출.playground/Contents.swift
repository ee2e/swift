import UIKit

func hello(name: String) -> String {
    return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Seonho")
print(helloJenny)
/* Hello Seonho! */

func introduce(name: String) -> String {
    // [return "제 이름은 " + name + " 입니다."] 와 같은 동작을 한다.
    "제 이름은 " + name + " 입니다."
}

let introduceJenny: String = introduce(name: "Seonho")
print(introduceJenny)
/* 제 이름은 Seonho 입니다. */
