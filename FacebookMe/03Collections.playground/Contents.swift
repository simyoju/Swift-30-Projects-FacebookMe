import UIKit

var arr:Array<Int> = [1, 2, 3, 4] // 정식표현
var arr1:[Int] = [1,2,3,4] // 축약표현
var arr2 = [1,2,3,4] // 생략 - 타입추론이 가능하기 때문
// var arr2 = [] <- 이렇게하면 배열 내 데이터 타입 추론이 불가능해서 에러 발생
var arr2_1:[Int] = [] // 이렇게는 가능!
var arr3 = Array<Int>() // 완전 정식 표현 - 생성자 쓰는 방법.
var arr4 = [Int]()
 
var omg1 = ["효정", "미미", "유아", "승희", "비니", "지호", "아린"]
print(omg1)
let omg2 = ["최효정", "김미현", "유시아", "현승희", "배유빈", "김지호", "최예원"]
print(omg2)
var omg3:Array<String> = ["효정", "미미", "유아", "승희", "비니", "지호", "아린"]
print(omg3)
var omg4:[String] = ["효정", "미미", "유아", "승희", "비니", "지호", "아린"]
print(omg4)
var omg5 = Array<String>()
omg5.append("")
omg5.append("효정")
print(omg5)

var omg = ["최효정", "김미현", "유시아", "현승희", "배유빈", "김지호", "최아린"]
let leader = omg[0]
print(leader)
omg[6] = "최예원"
print(omg)
omg.append("미라클")
print(omg)
omg.insert("원민공주", at: 3)
print(omg)

var i = 1
for memeber in omg {
    print("\(i)번째 멤버는 \(memeber)")
    i += 1
}

var length = omg.count

for index in 0...length-1 {
    print("\(index+1)번째 멤버는 \(omg[index])입니다")
}

omg.remove(at: 3)
print(omg)
omg.append(contentsOf: ["옴걸","사랑해"])
print(omg)
let part = omg[0...2]
print(omg)
omg[0...2] = ["승희", "효정"]
print(omg)

var set1: Set<String> = Set<String>()
var set2: Set<String> = []
var set3: Set<String> = ["최효정", "김미현", "유시아", "현승희", "배유빈", "김지호", "최아린"]

for name in set3 {
    print(name)
}

let res = set3.insert("현승희")
print(res)
