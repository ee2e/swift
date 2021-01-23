import UIKit

func sayHelloWorld() {
    print("Hello, world!")
}
sayHelloWorld()
/* Hello, world! */

func sayHello(from myName: String, to name: String) {
    print("Hello \(name)! I'm, \(myName)")
}
sayHello(from: "seonho", to: "jieun")
/* Hello jieun! I'm, seonho */

func sayGoodbye() -> Void {
    print("Good bye")
}
sayGoodbye()
/* Good bye */
