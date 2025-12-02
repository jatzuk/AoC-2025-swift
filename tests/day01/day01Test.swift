import Testing

@testable import aoc2025_swift

@Test func day01Part1ExampleTest() async throws {
  let input = [
    "L68",
    "L30",
    "R48",
    "L5",
    "R60",
    "L55",
    "L1",
    "L99",
    "R14",
    "L82",
  ]
  let result = day01Part1(input: input)
  #expect(result == 3)
}

@Test func day01Part1Test() async throws {
  let input = readInputAsLines(path: "sources/day01/input")
  let result = day01Part1(input: input)
  print(result)
}

@Test func day01Part2ExampleTest() async throws {
  let input = [
    "L68",
    "L30",
    "R48",
    "L5",
    "R60",
    "L55",
    "L1",
    "L99",
    "R14",
    "L82",
  ]
  let result = day01Part2(input: input)
  #expect(result == 6)
}

@Test func day01Part2() async throws {
  let input = readInputAsLines(path: "sources/day01/input")
  let result = day01Part2(input: input)
  print(result)
}
