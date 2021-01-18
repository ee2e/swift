import UIKit

var unsignedInteger: UInt8 = 0
let errorUnderflowResult: UInt8 = unsignedInteger - 1
/* 런타임 오류 */
let underflowdValue: UInt8 = unsignedInteger &- 1
/* 255 */

unsignedInteger = UInt8.max
/* 255 */
let errorOverflowResult: UInt8 = unsignedInteger + 1
/* 런타임 오류 */
let overflowedValue: UInt8 = unsignedInteger &+ 1
/* 0 */
