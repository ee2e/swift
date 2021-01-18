import UIKit

let valueA: Int = 3
let valueB: Int = 5
let valueC: Int = 5

let isSameValueAB: Bool = valueA == valueB
/* false */
let isSameValueBC: Bool = valueB == valueC
/* true */

let referenceA: SomeClass = SomeClass()
let referenceB: SomeClass = SomeClass()
let referenceC: SomeClass = referenceA

let isSameReferenceAB: Bool = referenceA === referenceB
/* false */
let isSameReferenceAC: Bool = referenceA === referenceC
/* true */
