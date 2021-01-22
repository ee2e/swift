import UIKit

// Dictionary
let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends {
    print(tuple)
}

/*
 (key: "Joe", value: 29)
 (key: "Jay", value: 35)
 (key: "Jenny", value: 31)
*/

let 주소: [String: String] = ["도": "충청북도", "시군구": "청주시 청원구", "동읍면": "율량동"]

for (키, 값) in 주소 {
    print("\(키) : \(값)")
}

/*
 시군구 : 청주시 청원구
 도 : 충청북도
 동읍면 : 율량동
*/

// Set
let 지역번호: Set<String> = ["02", "031", "032", "033", "041", "042", "043", "051", "052", "054", "055", "061", "062", "063", "064"]

for 번호 in 지역번호 {
    print(번호)
}

/*
 054
 061
 042
 063
 064
 041
 043
 051
 055
 02
 031
 032
 033
 052
 062
*/
