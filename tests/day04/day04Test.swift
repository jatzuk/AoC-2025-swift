import Testing

@testable import aoc2025_swift

@Test func day04Part1ExampleTest() async throws {
  let input = [
    "..@@.@@@@.",
    "@@@.@.@.@@",
    "@@@@@.@.@@",
    "@.@@@@..@.",
    "@@.@@@@.@@",
    ".@@@@@@@.@",
    ".@.@.@.@@@",
    "@.@@@.@@@@",
    ".@@@@@@@@.",
    "@.@.@@@.@.",
  ]
  let result = day04Part1(input: input)
  #expect(result == 13)
}

@Test func day04Part1Test() async throws {
  let input = readInputAsLines(path: "sources/day04/input")
  let result = day04Part1(input: input)
  #expect(result == 1424)
}

@Test func day04Part2ExampleTest() async throws {
  let input = [
    "..@@.@@@@.",
    "@@@.@.@.@@",
    "@@@@@.@.@@",
    "@.@@@@..@.",
    "@@.@@@@.@@",
    ".@@@@@@@.@",
    ".@.@.@.@@@",
    "@.@@@.@@@@",
    ".@@@@@@@@.",
    "@.@.@@@.@.",
  ]
  let result = day04Part2(input: input)
  #expect(result == 43)
}

@Test func day04Part2Test() async throws {
  let input = readInputAsLines(path: "sources/day04/input")
  let result = day04Part2(input: input)
  #expect(result == 8727)
}
