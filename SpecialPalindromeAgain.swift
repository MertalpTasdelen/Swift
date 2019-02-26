//A string is said to be a special palindromic string if either of two conditions is met:
//All of the characters are the same, e.g. aaa.
//All characters except the middle one are the same, e.g. aadaa.
//A special palindromic substring is any substring of a string which meets one of those criteria. Given a string, 
//determine how many special palindromic substrings can be formed from it.

var s = "a"
var i = 0
var n = s.count
var subStringIndex = 1
var countEvens = 0



while subStringIndex <= s.count {
    while i < s.count - subStringIndex {
        if subStringIndex % 2 != 0 {
            let isEqualEven = s[i...i+subStringIndex].dropLast().allSatisfy({ $0 == s[i...i+subStringIndex].last})//chekcs for even number calculation
            if isEqualEven {
//                print("counted even string is \(s[i...i+subStringIndex])")
                n += 1
            }
//            print("Evens \(s[i...i+subStringIndex])")
        }else {
            let index = s[i...i+subStringIndex].index(s[i...i+subStringIndex].startIndex, offsetBy: s[i...i+subStringIndex].count / 2, limitedBy: s[i...i+subStringIndex].endIndex)
            var string = s[i...i+subStringIndex]
            string.remove(at: index!)
            let isEqualOdd = string.allSatisfy({ $0 == s[i...i+subStringIndex].last})//checks for odd number calculations
            if isEqualOdd {
//                print("counted Odd string is \(s[i...i+subStringIndex])")
                n += 1
            }
//            print("Odds \(s[i...i+subStringIndex])")
        }

        i += 1
    }
    subStringIndex += 1
    i = 0
}


print(n)
