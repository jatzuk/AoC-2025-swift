import Foundation

func day02Part1(input: [String]) -> Int {
  let ranges = getRanges(input: input)

  var result = 0
  ranges.forEach { range in
    range.forEach { n in
      let isValid = isValid(n)
      if !isValid {
        result += n
      }
    }
  }

  return result
}

private func getRanges(input: [String]) -> [ClosedRange<Int>] {
  return input.flatMap { line in
    line.split(separator: ",")
      .map { strRange in
        let trimmed = strRange.trimmingCharacters(in: .whitespacesAndNewlines)
        let rangeRaw = trimmed.split(separator: "-")
        let left = Int(rangeRaw[0])!
        let right = Int(rangeRaw[1])!
        return left...right
      }
  }
}

private func isValid(_ n: Int) -> Bool {
  let string = String(n)
  let length = string.count
  if length % 2 != 0 {
    return true
  }

  let mid = length / 2
  let leftPart = string.prefix(mid)
  let rightPart = string.suffix(mid)
  return leftPart != rightPart
}

func day02Part2(input: [String]) -> Int {
  let ranges = getRanges(input: input)

  var result = 0
  ranges.forEach { range in
    range.forEach { n in
      let isValid = isValidPart2(n)
      if !isValid {
        result += n
      }
    }
  }

  return result
}

func isValidPart2(_ n: Int) -> Bool {
  let string = String(n)
  let length = string.count

  let mid = length / 2
  var chunkSize = mid

  while chunkSize >= 1 {
    if length % chunkSize != 0 {
      chunkSize -= 1
      continue
    }

    let chunks = string.chunked(size: chunkSize)
    let result = chunks.allSatisfy { $0 == string.prefix(chunkSize) }

    if result {
      return false
    }

    chunkSize -= 1
  }

  return true
}
