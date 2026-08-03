// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let noodles = layers.filter { layer in
        return (layer == "noodles" ?  true : false)
    }
    .count

    let sauce = Double(layers.filter { layer in
        return (layer == "sauce" ?  true : false)
    }
    .count)

    return (noodles: noodles * 3, sauce: sauce * 0.2)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce /= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    func filterAndCount(for text: String) -> Int {
            layers.filter { x in
            return (x == text ?  true : false)
        }
        .count
    }

    func mozzarella() -> Int {
        return filterAndCount(for: "mozarella")
    }
    func ricotta() -> Int {
        return filterAndCount(for: "ricotta")
    }
    func béchamel() -> Int {
        return filterAndCount(for: "béchamel")
    }
    func sauce() -> Int {
        return filterAndCount(for: "sauce")
    }
    func meat() -> Int {
        return filterAndCount(for: "meat")
    }

    return (meat() + sauce()) < (mozzarella() + ricotta() + béchamel())

}