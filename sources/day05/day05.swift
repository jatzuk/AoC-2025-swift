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

func day05Part2(input: [String]) throws -> Int {
  let split = input.split(whereSeparator: \.isBlank)
  let fresh = split[0].map { range in
    let values = range.split(separator: "-")
    let left = Int(values[0])!
    let right = Int(values[1])!
    return left...right
  }

  let sortedRanges = fresh.sorted { $0.lowerBound < $1.lowerBound }

  var merged = [ClosedRange<Int>]()
  merged.append(sortedRanges.first!)

  for range in sortedRanges.dropFirst() {
    let last = merged.last!
    if range.lowerBound <= last.upperBound {
      merged[merged.count - 1] = last.lowerBound...max(last.upperBound, range.upperBound)
    } else {
      merged.append(range)
    }
  }

  return merged.reduce(0) { acc, range in
    acc + range.count
  }
}
