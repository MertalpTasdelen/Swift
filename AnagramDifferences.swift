// Question is about anagrams anagrams means 
//An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
//typically using all the original letters exactly once.
//For example, the word anagram can be rearranged into nag a ram, or the word binary into brainy

// The way of solution is not an effective solution 

//solution will find the different letters in the words and print the result in integer.

import Foundation


var str1 = "lemon"
var str2 = "melon"
var string1: [Character] = []
var string2: [Character] = []

if str1.count >= str2.count {
    string1 = str1.lowercased().sorted()
    string2 = str2.lowercased().sorted()
} else {
    string1 = str2.lowercased().sorted()
    string2 = str1.lowercased().sorted()
}



var count = 0

for i in 0 ..< string1.count {
    for j in 0 ..<  string2.count {
        if string1[i] == string2[j] {
            print("ayni harf stringlerden cikartiliyor \(string1[i])")
            string1.remove(at: i)
            string2.remove(at: j)
            string1.insert(" ", at: i)
            string2.insert(" ", at: j)
        }
    }
}

for item in string2 {
    if item != " " {
        count += 1
    }
}

for item in string1 {
    if item != " " {
        count += 1
    }
}

print(count)

print(string2)
print(string1)
