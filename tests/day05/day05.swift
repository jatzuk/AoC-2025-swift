import Testing

@testable import aoc2025_swift

@Test func day05Part1ExampleTest() async throws {
  let input = [
    "3-5",
    "10-14",
    "16-20",
    "12-18",
    "",
    "1",
    "5",
    "8",
    "11",
    "17",
    "32",
  ]
  let result = day05Part1(input: input)
  #expect(result == 3)
}

@Test func day05Part1Test() async throws {
  let input = readInputAsLines(path: "sources/day05/input", trimLines: false)
  let result = day05Part1(input: input)
  #expect(result == 520)
}

@Test func day05Part2ExampleTest() async throws {
  let input = [
    "3-5",
    "10-14",
    "16-20",
    "12-18",
  ]
  let result = try day05Part2(input: input)
  #expect(result == 14)
}

@Test func day05Part2Test() async throws {
  let input = readInputAsLines(path: "sources/day05/input", trimLines: false)
  let result = try day05Part2(input: input)
  #expect(result == 347338785050515)
}
