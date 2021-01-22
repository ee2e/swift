import UIKit

enum Menu {
    case chicken
    case pizza
}

let lunchMenu: Menu = .chicken

switch lunchMenu {
case .chicken:
    print("반반 무많이")
case .pizza:
    print("핫소스 많이 주세요")
case _: // case default: 와 같은 표현이다
    print("오늘 메뉴가 뭐죠?")
}

/* 반반 무많이 */
