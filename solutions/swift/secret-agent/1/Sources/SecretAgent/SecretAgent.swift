func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func f (_ pwd: String) -> String {
        if pwd == password {
            return secret
        } else {
            return "Sorry. No hidden secrets here."
        }     
    }
    return f
}

func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let a = f(room)
    let b = f(a)
    let c = f(b)
    return (a, b, c)
}
