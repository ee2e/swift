import UIKit

var integer: Int = -100
let unsignedInteger: UInt = 50  // UInt 타입에는 음수값을 할당할 수 없음
print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
/* integer 값: -100, unsignedInteger 값: 50 */

print("Int 최대값: \(Int.max), Int 최소값: \(Int.min)")
/* Int 최대값: 9223372036854775807, Int 최소값: -9223372036854775808 */
let largeInteger: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 최대값: \(largeInteger), UInt8 최대값: \(smallUnsignedInteger)")
/* Int64 최대값: 9223372036854775807, UInt8 최대값: 255 */

let tooLarge: Int = Int.max + 1 // Int 표현 범위를 초과하므로 오류를 냄
let cannotBeNagetive: UInt = -5 // UInt는 음수가 될 수 없으므로 오류를 냄

integer = unsignedInteger   // 오류! 스위프트에서 Int와 UInt는 다른 타입
integer = Int(unsignedInteger)  // Int 타입의 값으로 할당해주어야 함
