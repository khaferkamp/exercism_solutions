func dailyRateFrom(hourlyRate: Int) -> Double {
    Double(hourlyRate * 8) 
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let workingDays = Double(22)
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let dPerc = 1.0 - (discount/100.0)
    let rate = workingDays * dailyRate * dPerc
    return rate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dPerc = (1 - discount * 0.01)
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate) * dPerc
    return (budget / dailyRate).rounded(.down)
}
