import UIKit

let first: Int = 5
let second: Int = 5
var biggerValue: Int = 0

if first > second {
    biggerValue = first
} else if first == second {
    biggerValue = first
} else if first < second {
    biggerValue = second
} else if first == 5 {
    // 조건을 충족하더라도 이미 first == second 라는 조건을 충족해 위에서 실행 됐기에 실행되지 않음
    biggerValue = 100
}

print(biggerValue)
/* 5 */
