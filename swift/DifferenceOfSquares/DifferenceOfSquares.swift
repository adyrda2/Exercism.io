struct Squares {

  var number: Int

  init(_ number: Int) {
    self.number = number
  }

  var numbersInRange: [Int] {
    return Array(1...number)
  }

  var squareOfSums: Int {
    let sumOfNumbers = numbersInRange.reduce(0, { x, y in
      x + y
    })
    return sumOfNumbers * sumOfNumbers
  }

  var sumOfSquares: Int {
    let squaredNumbers = numbersInRange.map { $0 * $0 }
    return squaredNumbers.reduce(0, { x, y in
      x + y
    })
  }

  var differenceOfSquares: Int {
    return squareOfSums - sumOfSquares
  }
}
