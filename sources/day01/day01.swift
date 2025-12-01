import Foundation

func part1(input: [String]) -> Int {
  var dial = 50
  var result = 0

  for instruction in input {
    let index = instruction.index(instruction.startIndex, offsetBy: 0)
    let direction = instruction[index]

    let numberRange = instruction.index(instruction.startIndex, offsetBy: 1)..<instruction.endIndex
    let originNumber = Int(instruction[numberRange])!
    let signedNumber = if direction == "L" {
      originNumber * -1
    } else {
      originNumber
    }

    let rawValue = dial + signedNumber
    dial = ((rawValue % 100) + 100) % 100

    if dial == 0 {
      result += 1
    }
    print("value: \(dial)")
  }

  return result
}

func part2(input: [String]) -> Int {
  var dial = 50
  var result = 0

  for instruction in input {
    let index = instruction.index(instruction.startIndex, offsetBy: 0)
    let direction = instruction[index]

    let numberRange = instruction.index(instruction.startIndex, offsetBy: 1)..<instruction.endIndex
    let originNumber = Int(instruction[numberRange])!
    let signedNumber = if direction == "L" {
      originNumber * -1
    } else {
      originNumber
    }

    let delta = signedNumber > 0 ? 1 : -1
    for _ in 0..<originNumber {
      let value = dial + delta
      if value == 0 || value == 100 {
        result += 1
      }
      dial = (value + 100) % 100
    }
    print("value: \(dial)")
  }

  return result
}
