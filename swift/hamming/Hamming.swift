import Foundation
class Hamming {
    class func compute(firstString: String, against: String) -> Int? {
        
        let firstCharacters: [Character] = firstString.characters.map { $0 }
        let againstCharacters: [Character] = against.characters.map { $0 }
        
        guard firstCharacters.count == againstCharacters.count else { return nil }
        
        var count = 0
        for (index, character) in firstCharacters.enumerate() {
            if character != againstCharacters[index] {
                count+=1
            }
        }
        return count
    }
}