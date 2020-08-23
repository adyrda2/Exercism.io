import Foundation

class SpaceAge {

  var seconds: Double = 0
  
  init(age: Double) {
    self.seconds = age
  }

  var onEarth: Double {
    let solarYears = seconds/AgeOn.earth.inSeconds
    return roundNumber(age: solarYears)
  }

  var onMercury: Double {
    let solarYears = seconds/AgeOn.mercury.inSeconds
    return roundNumber(age: solarYears)
  }

  var onVenus: Double {
    let solarYears = seconds/AgeOn.venus.inSeconds
    return roundNumber(age: solarYears)
  }

  var onMars: Double {
    let solarYears = seconds/AgeOn.mars.inSeconds
    return roundNumber(age: solarYears)
  }

  var onJupiter: Double {
    let solarYears = seconds/AgeOn.jupiter.inSeconds
    return roundNumber(age: solarYears)
  }

  var onSaturn: Double {
    let solarYears = seconds/AgeOn.saturn.inSeconds
    return roundNumber(age: solarYears)
  }

  var onUranus: Double {
    let solarYears = seconds/AgeOn.uranus.inSeconds
    return roundNumber(age: solarYears)
  }

  var onNeptune: Double {
    let solarYears = seconds/AgeOn.neptune.inSeconds
    return roundNumber(age: solarYears)
  }

  func roundNumber(age: Double) -> Double {
    let numberOfPlaces: Double = 2.0
    let powerOfTen: Double = pow(10.0, numberOfPlaces)
    let targetedDecimalPlaces: Double = round(age * powerOfTen) / powerOfTen

    return targetedDecimalPlaces
  }
}

enum AgeOn: Int {
  case earth, mercury, venus, mars, jupiter, saturn, uranus, neptune

  var secondsPerYear: Double {
    return 365.25 * 86_400
  }

  var inSeconds: Double {
    switch self {
    case .earth: return secondsPerYear
    case .mercury: return 0.2408467 * secondsPerYear
    case .venus: return  0.61519726 * secondsPerYear
    case .mars: return 1.8808158 * secondsPerYear
    case .jupiter: return 11.862615 * secondsPerYear
    case .saturn: return 29.447498 * secondsPerYear
    case .uranus: return 84.016846 * secondsPerYear
    case .neptune: return 164.79132 * secondsPerYear
    }
  }
}
