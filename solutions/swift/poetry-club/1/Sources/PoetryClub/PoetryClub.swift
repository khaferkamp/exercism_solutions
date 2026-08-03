import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
   if let c = line.first {
       return c 
   } else {
       return "_"       
   }
}

func capitalize(_ phrase: String) -> String {
    return phrase.capitalized
}

func trimSentence(_ line: String) -> String {
    return line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
     if let c = line.last {
       return c 
   } else {
       return "_"       
   }
}

func backDoorPassword(_ phrase: String) -> String {
  return phrase.capitalized + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    //line.indices.contains(idx)
    if i > 0 && i < line.count {
        let idx = line.index(line.startIndex, offsetBy: i)
        return line[idx]
    } else {
        return " "
    }
}

func secretRoomPassword(_ phrase: String) -> String {
  return phrase.uppercased + "!"
}
