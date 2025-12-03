import Foundation

func day03Part1(input: [String]) -> Int {
  return input.reduce(0) { (acc, line) in
    let sum = findMax(line: line)
    return acc + sum
  }
}

private func findMax(line: String) -> Int {
  let digits = line.compactMap { $0.wholeNumberValue }

  var leftIdx = 0
  var leftMax = digits[leftIdx]
  var rightMax = digits[1]

  for rightIdx in 1..<digits.count {
    let right = digits[rightIdx]
    let isLastIndex = rightIdx == digits.count - 1

    if right > leftMax && !isLastIndex {
      leftMax = right
      leftIdx = rightIdx
      rightMax = Int.min
    } else if right > rightMax {
      rightMax = right
    }
  }

  return leftMax * 10 + rightMax
}

func day03Part2(input: [String]) -> Int {
  return input.reduce(0) { (acc, line) in
    let sum = findMaxPart2(line: line)
    return acc + sum
  }
}

private func findMaxPart2(line: String) -> Int {
  let digits = line.compactMap { $0.wholeNumberValue }
  let capacity = 12

  var result: [Int] = []
  var idx = 0
  var remainSize = capacity

  while remainSize > 0 {
    let windowEndIdx = digits.count - remainSize
    let range = idx...windowEndIdx
    var maxValue = digits[idx]

    for i in range {
      let digit = digits[i]
      if digit > maxValue {
        maxValue = digit
        idx = i
      }
    }

    result.append(maxValue)
    idx += 1
    remainSize -= 1
  }

  return result.reduce(0) { (sum, digit) in
    sum * 10 + digit
  }
}
