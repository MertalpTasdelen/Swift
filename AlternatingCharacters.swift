//You are given a string containing characters A  and B only. Your task is to change it into a string such that there are no matching 
//adjacent characters. To do this, you are allowed to delete zero or more characters in the string.
//Your task is to find the minimum number of required deletions.
//For example, given the string s = AABAAB , remove an A at positions 0 and 3 to make s = ABAB in 2  deletions

func alternatingCharacters(s: String) -> Int {
    var minNumberOfDeletion = 0
    var newArray = [Character]()
    
    
    for item in  s {
        if newArray.isEmpty{
            newArray.append(item)
        }else{
            if item != newArray.last {
                newArray.append(item)
            }
        }

    }
    
    minNumberOfDeletion = s.count - newArray.count
    
    return minNumberOfDeletion
}
