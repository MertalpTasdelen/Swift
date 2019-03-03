func minimumBribes(q: [Int]) -> Void {
    var bribeCount = 0
    for (i,x) in q.enumerated() {
        let index = i + 1
        if x - index > 2 {
            print("Too chaotic")
            return
        }
        
        for j in max(0, x - 2)..<index {
            if q[j] > x {
//                print(j)
//                print(q[j])
                bribeCount += 1
            }
        }
    }
    print(bribeCount)
}
