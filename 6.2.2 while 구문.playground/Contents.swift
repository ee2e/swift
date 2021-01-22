import UIKit

var names: [String] = ["Joker", "Jenny", "Nova", "yagom"]

while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
    // removeFirst()는 요소를 삭제함과 동시에 삭제한 요소를 반환한다.
}

/*
 Good bye Joker
 Good bye Jenny
 Good bye Nova
 Good bye yagom
*/
