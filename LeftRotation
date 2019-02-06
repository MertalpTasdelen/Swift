import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    var tempArray = a
    for _ in 0 ..< d {
        var temp = tempArray[0]
        for i in 0 ..< tempArray.count-1 {
            tempArray[i] = tempArray[i + 1]
        }
    tempArray[tempArray.count - 1] = temp
}
    return tempArray
}
