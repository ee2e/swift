import UIKit

var myName: String? = "seonho"

// 옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없다. 추출해서 할당해주어야 한다.
var seonho: String = myName!

myName = nil
seonho = myName!    // 런타임 오류

// if 구문 등 조건문을 이용해서 조금 더 안전하게 처리해볼 수 있다.
if myName != nil {
    print("My name is \(myName!)")
} else {
    print("myName == nil")
}
/* myName == nil */
