import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    var tempArray = a
    var lastPart = tempArray[0..<d]
    var firstPart = tempArray[d..<tempArray.count]
    var newArray = Array(firstPart + lastPart)
    return newArray
}
