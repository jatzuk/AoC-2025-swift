import Testing

@testable import aoc2025_swift

@Test func day03Part1ExampleTest() async throws {
  let input = [
    "987654321111111",
    "811111111111119",
    "234234234234278",
    "818181911112111",
  ]
  let result = day03Part1(input: input)
  #expect(result == 357)
}

@Test func day03Part1Test() async throws {
  let input = readInputAsLines(path: "sources/day03/input")
  let result = day03Part1(input: input)
  #expect(result == 17343)
}

@Test func day03Part2ExampleTest() async throws {
  let input = [
    "987654321111111",
    "811111111111119",
    "234234234234278",
    "818181911112111",
  ]
  let result = day03Part2(input: input)
  #expect(result == 3121910778619)
}

@Test func day03Part2Test() async throws {
  let input = readInputAsLines(path: "sources/day03/input")
  let result = day03Part2(input: input)
  #expect(result == 172664333119298)
}
