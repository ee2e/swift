import UIKit

var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])
/* 2 */

referenceParameter(&numbers)    // 참조를 표현하기 위해 &을 붙여준다.
print(numbers[1])
/* 1 */
