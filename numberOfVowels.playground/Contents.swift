import UIKit

func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
    //to keep track of the vowel count
    var count:Int = 0
    
    for letter in string {
        //convert to lowercase to have less comparisons
        let newLetter = letter.lowercased()
        //check to see if they want to include y if so does it match the letter y?
        if isYAVowel && newLetter == "y" {
            count += 1
        //does the letter match to a vowel
        } else if newLetter == "a" || newLetter == "e" || newLetter == "i" || newLetter == "o" || newLetter == "u" {
            count += 1
        }
    }
    return count
}

print(numberOfVowels(in: "Polly wants A cracker!", isYAVowel: true))
