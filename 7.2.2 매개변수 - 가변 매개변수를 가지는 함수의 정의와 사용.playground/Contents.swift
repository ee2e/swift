import UIKit

func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "jieun", friends: "seonho", "donghae", "hero"))
/* Hello seonho! Hello donghae! Hello hero! I'm jieun! */

print(sayHelloToFriends(me: "jieun"))
/* I'm jieun! */
