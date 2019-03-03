import Foundation

let arr = [[-9,-9,-9,1,1,1], [0 ,-9, 0, 4 ,3, 2], [-9,-9 ,-9, 1 ,2 ,3], [0, 0, 8, 6, 6, 0], [0,0,0,-2,0,0], [0 ,0, 1, 2, 4, 0]]

var maximumSum = Int.min

for x in 0 ..< arr.count - 2 {
    for y in 0 ..< arr[x].count - 2 {
        let top = arr[x][y] + arr[x][y+1] + arr[x][y+2]
        let mid = arr[x+1][y+1]
        let bot = arr[x+2][y] + arr[x+2][y+1] + arr[x+2][y+2]
        var sum = top + mid + bot
//        print("top = \(top)   mid = \(mid)   bot = \(bot)")
//        print(sum)
        if sum > maximumSum {
            maximumSum = top + mid + bot
        }
    }
}

print(maximumSum)
