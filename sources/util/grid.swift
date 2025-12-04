extension Collection where Element: Collection {

  func prettyPrint() {
    for row in self {
      for element in row {
        print(element, terminator: " ")
      }
      print()
    }
  }

  func directions() -> [(Int, Int)] {
    return [
      (-1, -1), (-1, 0), (-1, 1),
      (0, -1), (0, 1),
      (1, -1), (1, 0), (1, 1),
    ]
  }
}

extension [String] {

  func toGrid() -> [[Character]] {
    var grid: [[Element.Element]] = []

    for row in self {
      grid.append(row.map { $0 })
    }

    return grid
  }
}
