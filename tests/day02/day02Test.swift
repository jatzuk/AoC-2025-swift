import Testing

@testable import aoc2025_swift

@Test func day02Part1ExampleTest() async throws {
  let input = [
    "11-22",
    "95-115",
    "998-1012",
    "1188511880-1188511890",
    "222220-222224",
    "1698522-1698528",
    "446443-446449",
    "38593856-38593862",
    "565653-565659",
    "824824821-824824827",
    "2121212118-2121212124"
  ]
  let result = day02Part1(input: input)
  #expect(result == 1227775554)
}

@Test func day02Part1Test() async throws {
  let input = readInputAsLines(path: "sources/day02/input")
  let result = day02Part1(input: input)
  print(result)
}

@Test func day02Part2ExampleTest() async throws {
  let input = [
    "11-22",
    "95-115",
    "998-1012",
    "1188511880-1188511890",
    "222220-222224",
    "1698522-1698528",
    "446443-446449",
    "38593856-38593862",
    "565653-565659",
    "824824821-824824827",
    "2121212118-2121212124"
  ]
  let result = day02Part2(input: input)
  #expect(result == 4174379265)
}

@Test func day02Part2Test() async throws {
  let input = readInputAsLines(path: "sources/day02/input")
  let result = day02Part2(input: input)
  print(result)
}
