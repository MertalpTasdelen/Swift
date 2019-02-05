let socks = [1,2,3,1,2,2,1,2,4]

private func countPairs(of items: [Int]) -> Int {
    var result = 0
    var array = items
    repeat {
        let temp = array[0]
        array.remove(at: 0)
        for index in array.indices {
            if temp == array[index] {
                result += 1
                array.remove(at: index)
                break
            }
        }
    } while array.count > 1
    return result
}

print(countPairs(of: socks))
