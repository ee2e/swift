import UIKit

// 상수로 선언된 문자열을 변경이 불가능함
let name: String = "seonho"

// 이니셜라이저를 사용하여 빈 문자열을 생성할 수 있음
// var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경이 가능
var introduce: String = String()

// append() 메서드를 사용하여 문자열을 이어붙일 수 있음
introduce.append("제 이름은")

// + 연산자를 통해서도 문자열을 이어붙일 수 있음
introduce = introduce + " " + name + "입니다."
print(introduce)
/* 제 이름은 seonho입니다. */

// name에 해당하는 문자의 수를 셀 수 있음
print("name의 글자 수: \(name.count)")
/* name의 글자 수: 6 */
// 빈 문자열인지 확인해볼 수 있음
print("introduce가 비어있습니까?: \(introduce.isEmpty)")
/* introduce가 비어있습니까?: false */

// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력됨
let unicodeScalarValue: String = "\u{2665}"
print(unicodeScalarValue)
/* ♥ */


// String 타입의 다양한 기능

// 연산자를 통한 문자열 결합
let hello: String = "Hello"
let seonho: String = "seonho"
var greeting: String = hello + " " + seonho + "!"
print(greeting)
/* Hello seonho! */

greeting = hello
greeting += " "
greeting += seonho
greeting += "!"
print(greeting)
/* Hello seonho! */

// 연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
print(isSameString)
/* true */

isSameString = hello == "hello"
print(isSameString)
/* false */

isSameString = seonho == "seonho"
print(isSameString)
/* true */

isSameString = seonho == hello
print(isSameString)
/* false */

// 메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)
/* true */

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)
/* false */

hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix)
/* true */

hasPrefix = seonho.hasPrefix("ho")
print(hasPrefix)
/* false */

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)
/* true */

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)
/* false */

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)
/* true */

hasSuffix = greeting.hasSuffix("seonho")
print(hasSuffix)
/* false */

hasSuffix = greeting.hasSuffix("seonho!")
print(hasSuffix)
/* true */

hasSuffix = seonho.hasSuffix("ho")
print(hasSuffix)
/* true */

// 메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)
/* HELLO */

convertedString = hello.lowercased()
print(convertedString)
/* hello */

convertedString = seonho.uppercased()
print(convertedString)
/* SEONHO */

convertedString = greeting.uppercased()
print(convertedString)
/* HELLO SEONHO! */

convertedString = greeting.lowercased()
print(convertedString)
/* hello seonho! */

// 프로퍼티를 통한 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)
/* false */

greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString)
/* false */

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)
/* true */

// 프로퍼티를 이용해 문자열 길이 확인
print(greeting.count)
/* 0 */

greeting = "안녕하세요"
print(greeting.count)
/* 5 */

greeting = "안녕!"
print(greeting.count)
/* 3 */

// 코드상에서 여러 줄의 문자를 직접 쓰고 싶다면 큰따옴표 세 개를 사용하면 됨
// 큰따옴표 세 개를 써주고 한 줄을 내려써야 함
// 마지막 줄도 큰따옴표 세 개는 한 줄 내려써야 함
greeting = """
    안녕하세요 저는 선호입니다.
    스위프트를 잘하고 싶어요!
    잘 부탁합니다!
    """


// 문자열 내 특수문자 사용
print("문자열 내부에\n 이런 \"특수문자\"를 \t사용하면 \\이런 놀라운 결과를 볼 수 있습니다")
/*
 문자열 내부에
  이런 "특수문자"를     사용하면 \이런 놀라운 결과를 볼 수 있습니다
 */
print(#"문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요 그러면 \n \t 등이 그대로 출력됩니다"#)
/* 문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요 그러면 \n \t 등이 그대로 출력됩니다 */
let number: Int = 100
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \#(number) 해보세요 #을 넣지 않으면 \(number) 그대로 출력됩니다"#)
/* 특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 100 해보세요 #을 넣지 않으면 \(number) 그대로 출력됩니다 */
