import UIKit

var distance: Int = 0


// MARK: - Function
// func 이름() { 구현 }
func moveForward() {
    distance = distance + 1 // distance += 1 --> 많이 쓰이는 유형
}

print(distance)

moveForward()
// 1씩 옮길때마다 추가1

print(distance)

// MARK: - 아래 유형을 축약하는 방법(3씩 증가하게끔), 반복되는 부분을 function을 이용하여 { }에 축약하여 기입한다

// 반복 동작
moveForward()
moveForward()
moveForward()

// MARK: #1. for 구문
distance = 0
for _ in 1...3 {
    moveForward()
}
print(distance)
// i == index => i를 쓰지 않을 경우 '_'으로 표시
// for i in 1..<3 => 부등호 변경

let sports = ["Football", "Basketball", "Volleyball", "Golf"]

for i in 0...3 {
    print(sports[i])
}

for i in 1...3 {
    print(sports[i])
}

// MARK: - #2. 함수 + for
func moveThreeForward() {
    for _ in 1...3 {
         moveForward()
    }
}

// Parameter
func moveForward(step: Int) {
    for _ in 1...step {
         moveForward()
    }
}

// for 구문을 사용하지 않는 경우
func move(step: Int) {
    distance = distance + step // distance += step
}

func jump() {
    move(step: 3)
}

// 반복 동작
jump()
jump()
jump()

func jump(step: Int) {
    for _ in 1...step {
        jump()
    }
}

jump(step: 3) // *jump() 3개를 이렇게 한 줄로 만들 수 있다


//func moveLong() {
//  move(step: 3)  // 한번에 3칸씩 이동
//}
//
//func moveLong(step: Int) {
//    for _ in 1...step {
//        moveLong()
//    }
//}
//
//func jump(step: Int) {
//    move(step: 3 * step)
//}
