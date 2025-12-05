import Foundation

func day05Part1(input: [String]) -> Int {
  let split = input.split(whereSeparator: \.isBlank)
  let fresh = split[0].map { range in
    let values = range.split(separator: "-")
    let left = Int(values[0])!
    let right = Int(values[1])!
    return left...right
  }
  let ids = split[1].compactMap { Int($0) }
  var result = 0

  ids.forEach { n in
    let contains = isWithinRange(n: n, ranges: fresh)
    if contains {
      result += 1
    }
  }

  return result
}

private func isWithinRange(n: Int, ranges: [ClosedRange<Int>]) -> Bool {
  return ranges.contains { range in
    range.contains(n)
  }
}

func day05Part2(input: [String]) -> Int {
  let split = input.split(whereSeparator: \.isBlank)
  var minRange = Int.max
  var maxRange = Int.min
  let fresh = split[0].map { range in
    let values = range.split(separator: "-")
    let left = Int(values[0])!
    let right = Int(values[1])!
    minRange = min(minRange, left)
    maxRange = max(maxRange, right)
    return left...right
  }

  var seen = Set<Int>()
  var counter = 0

  for n in minRange...maxRange {
    // if r {
    //   counter += 1
    // }
   }

  return counter
}
