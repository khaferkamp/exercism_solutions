func newScoreBoard() -> [String: Int] {
  return [String : Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  scores[name]? += delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  func name (_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    return lhs.0 < rhs.0
  }

  return scores.sorted(by: name)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  func score (_ lhs: (String, Int), _ rhs: (String, Int)) -> Bool {
    return lhs.1 > rhs.1
  }

  return scores.sorted(by: score)
}
