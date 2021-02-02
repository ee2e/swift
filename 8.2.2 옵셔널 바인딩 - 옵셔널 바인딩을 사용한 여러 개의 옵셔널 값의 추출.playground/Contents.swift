import UIKit

var myName: String? = "seonho"
var yourName: String? = nil

// friend에 바인딩이 되지 않으므로 실행되지 않는다.
if let name = myName, let friend = yourName {
    print("We are friend! \(name) & \(friend)")
}

yourName = "hero"

if let name = myName, let friend = yourName {
    print("We are friend! \(name) & \(friend)")
}
/* We are friend! seonho & hero */
