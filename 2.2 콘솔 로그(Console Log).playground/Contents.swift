import SwiftUI

struct BasicInformation {
  let name: String
  var age: Int
}

var seonhoInfo: BasicInformation = BasicInformation(name: "seonho", age: 36)

class Person {
  var height: Float = 0.0
  var weight: Float = 0.0
}

let seonho: Person = Person()
seonho.height = 183.5
seonho.weight = 76.5

print(seonhoInfo)
dump(seonhoInfo)
/*
▽ BasicInformation
- name: "seonho"
- age: 36
*/

print(seonho)        // Person
dump(seonho)
/*
▽ Person: #0
- height: 183.5
- weight: 76.5
*/

