//Sherlock considers a string to be valid if all characters of the string appear the same number
//of times. It is also valid if he can remove just 1 character at 1 index in the string, and the
//remaining characters will occur the same number of times. Given a string s, determine if it is
//valid. If so, return YES, otherwise return NO.

// I use first an extension for using the arrays with integer indexing it is in the code .If there is any advice to give or improve 
// feel free to get pull request or just get discussion. Thank you very much. Nice coding.

import Foundation

public extension StringProtocol {
    
    public subscript (i: Int) -> Element {
        return self[index(startIndex, offsetBy: i)]
    }
    
    public subscript (bounds: CountableClosedRange<Int>) -> SubSequence {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start...end]
    }
    
    public subscript (bounds: CountableRange<Int>) -> SubSequence {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start..<end]
    }
    
    public subscript (bounds: PartialRangeUpTo<Int>) -> SubSequence {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex..<end]
    }
    
    public subscript (bounds: PartialRangeThrough<Int>) -> SubSequence {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex...end]
    }
    
    public subscript (bounds: CountablePartialRangeFrom<Int>) -> SubSequence {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        return self[start..<endIndex]
    }
}

// Complete the isValid function below.
func isValid(s: String) -> String {
    var frequencyDictionary = [Character:Int]()
    var count = 0
    
    for item in s {
        for i in 0 ..< s.count {
            if item == s[i] {
                count += 1
            }
            frequencyDictionary[item] = count
        }
        count = 0
    }

    var result = 0
    
    for item in frequencyDictionary.values.sorted() {
        if item + 1 == frequencyDictionary.values.sorted().last || item == frequencyDictionary.values.sorted().last  {
            result += 1
        }else {
            result -= 1
        }
    }
    
    if result == frequencyDictionary.count - 1 || result == frequencyDictionary.count {
        return "YES"
    }else {
        return "NO"
    }
}
