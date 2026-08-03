// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes a: Int) -> Int {
   expectedMinutesInOven - a
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers b: Int) -> Int {
   2 * b
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers a: Int, elapsedMinutes b: Int) -> Int {
  preparationTimeInMinutes(layers: a) + b
}