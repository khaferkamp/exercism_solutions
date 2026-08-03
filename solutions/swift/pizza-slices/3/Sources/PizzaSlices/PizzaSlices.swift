import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  if diameter == nil || diameter! < 0 || slices == nil || slices! < 1 {
    return nil
  }

  return Double.pi * pow(diameter!/2, 2.0) / Double(slices!)
}

// func biggestSlice(
//   diameterA: String, slicesA: String,
//   diameterB: String, slicesB: String
// ) -> String {
//   let r0 = "Neither slice is bigger"
//   let r1 = "Slice A is bigger"
//   let r2 = "Slice B is bigger"
//   let dA = Double(diameterA)
//   let sA = Int(slicesA)
//   let dB = Double(diameterB)
//   let sB = Int(slicesB)
//   let areaA = sliceSize(diameter: dA, slices: sA)
//   let areaB = sliceSize(diameter: dB, slices: sB)

//   if areaA == nil && areaB == nil {
//     return r0
//   }

//   if (areaB == nil && areaA! >= 0) {
//     return r1
//   }

//   if areaA == nil && areaB! >= 0 {
//     return r2 
//   }

//   if areaA! == areaB! {
//     return r0
//   }

//   if areaA! > areaB! {
//     return r1
//   } else {
//     return r2
//   }
// }


func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    var larger: Double?
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    switch (areaA, areaB) {
    case (.none, .none): break
    case (.some, .none): larger = areaA
    case (.none, .some): larger = areaB
    case let (.some(a), .some(b)):
        if a > b {
            larger = a
        } else if b > a {
            larger = b
        }
    }
    if larger == nil {
        return "Neither slice is bigger"
    } else if larger == areaA {
        return "Slice A is bigger"
    } else {
        return "Slice B is bigger"
    }
}