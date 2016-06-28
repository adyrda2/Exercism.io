import Foundation

class WordCount {
    
    let words: String
    
    init(words: String) {
        self.words = words.lowercaseString
    }
    
    func count() -> [String: Int] {
        let arrayOfWords = words.componentsSeparatedByCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet).filter({ $0.isEmpty == false })
        
        var dictionaryOfWords = [String: Int]()
        for word in arrayOfWords {
            if let count = dictionaryOfWords[word] {
                dictionaryOfWords[word] = count + 1
            } else {
                dictionaryOfWords[word] = 1
            }
        }
        return dictionaryOfWords
    }
}