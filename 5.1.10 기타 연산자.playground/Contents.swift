import UIKit

let valueInt: Int = someOptionalInt != nil ? someOptionalInt! : 0

// 위 코드와 같은 결과를 볼 수 있지만 훨씬 안전하게 옵셔널을 다룰 수 있다.
let valueInt: Int = someOptionalInt ?? 0
