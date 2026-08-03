func getCard(at index: Int, from stack: [Int]) -> Int {
  !stack.isEmpty ? stack[index] : 0
}

func invalidIndex(at index: Int, in stack: [Int]) -> Bool {
   (stack.isEmpty || index < 0 || index >= stack.count) ? true : false                                            
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if invalidIndex(at: index, in: stack) {
        return stack
    }
    var c = stack
    c[index] = newCard
    return c
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var c = stack
    c.append(newCard)
    return c
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] { 
    if invalidIndex(at: index, in: stack) {
        return stack
    } 
    var c = stack
    c.remove(at: index)       
    return c
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  if stack.isEmpty {
        return stack
    } 
    var c = stack
    c.removeLast()       
    return c
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var c = stack
    c.insert(newCard, at: 0)
    return c
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    if stack.isEmpty {
        return stack
    } 
    var c = stack
    c.removeFirst()       
    return c
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  stack.map { $0 % 2 == 0 ? 1 : 0 }.reduce(0, { x, y in x + y})
}
