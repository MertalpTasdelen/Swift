import Foundation

    var S = "011100"
    var powerOf = Double(S.count) - 1.0
    var number = 0.0
    var step = 0

    for item in S {
        if item == "1" {
            number += pow(2.0,powerOf)
            powerOf -= 1
        }else {
            powerOf -= 1
        }
    }

    var value = Int(number)

    for _ in 0 ..< Int.max {
        if value % 2 == 0 {
            value = value / 2
            step += 1
        }else{
            value -= 1
            step += 1
        }
        if value == 0 {
            break
        }
    }

    print(step)


    var number = 13
    var binaryNum: [String] = []

    for _ in 0 ..< Int.max  {
        if number % 2 == 0 {
            binaryNum.append("0")
            number = number / 2
        }else {
            binaryNum.append("1")
            number = number / 2
        }
        if number == 0 {
            break
        }
    }

    print(binaryNum.reversed())
