import Foundation

struct Nucleotide {
    var dnaToRna: [Character: String] = ["C":"G", "G":"C", "T":"A", "A":"U"]
    var dnaSequence: String
    
    init(_ dnaSequence: String) {
        self.dnaSequence = dnaSequence
    }
    
    var complementOfDNA: String {
        let sequence = dnaSequence.characters.flatMap { dnaToRna[$0] }
        return sequence.joinWithSeparator("")
    }
}