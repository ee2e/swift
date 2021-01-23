import UIKit

func helloWorld() -> String {
    return "Hello, world!"
}

print(helloWorld())
/* Hello, world! */

func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(myName: "jieun", yourName: "seonho"))
/* Hello seonho! I'm jieun */
