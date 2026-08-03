import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    poem.split(separator: "\n", omittingEmptySubsequences: false).map(String.init)
}

func firstLetter(_ line: String) -> Character {
    line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
    String(phrase.split(separator: " ").map({
        $0.prefix(1).uppercased() + $0.dropFirst().lowercased()
    }).joined(separator: " "))
}

func trimSentence(_ line: String) -> String {
    line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
    line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
    "\(capitalize(phrase)), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    guard i > 0 && i < line.count else { return " " }
    return line[line.index(line.startIndex, offsetBy: i)]
}

func secretRoomPassword(_ phrase: String) -> String {
    "\(phrase.uppercased())!"
}
