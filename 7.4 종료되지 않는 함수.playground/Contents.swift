import UIKit

func crashAndBurn() -> Never {
    fatalError("Something very, very bad happened")
}

crashAndBurn()  // 프로세스 종료 후 오류 보고

func someFunction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("마을에 도둑이 들었습니다!")
        crashAndBurn()
    }
    print("All is well")
}

someFunction(isAllIsWell: true)
/* All is well */
someFunction(isAllIsWell: false)
/* 마을에 도둑이 들었습니다!
 Fatal error: Something very, very bad happened: file __lldb_expr_77/7.4 종료되지 않는 함수.playground, line 4
*/
