import Foundation

struct Isogram {
    static func isIsogram(_ word: String) -> Bool {
        let filtered = word.lowercased().components(separatedBy: ["-", " "]).joined()
        var uniqueCharacters:[Character] = []
        for character in filtered.characters {
            if uniqueCharacters.contains(character) == false {
                uniqueCharacters.append(character)
            }
        }
        guard filtered.characters.count == uniqueCharacters.count
            else { return false }
        return true
    }
}
