import Foundation

func day04Part1(input: [String]) -> Int {
  var grid = input.toGrid()
  var accessibleCount = 0

  for y in grid.indices {
    for x in grid[y].indices {
      let element = grid[y][x]
      let neighbors = checkNeighbors(grid: grid, x: x, y: y)
      if (element != ".") && neighbors < 4 {
        accessibleCount += 1
        grid[y][x] = "x"
      }
    }
  }

  return accessibleCount
}

private func checkNeighbors(grid: [[Character]], x: Int, y: Int) -> Int {
  let char = grid[y][x]
  if char == "." {
    return 0
  }

  var count = 0
  for direction in grid.directions() {
    let (dy, dx) = direction
    let lookupY = y + dy
    let lookupX = x + dx

    guard lookupY >= 0, lookupY < grid.count, lookupX >= 0, lookupX < grid[0].count else {
      continue
    }

    let neighbor = grid[lookupY][lookupX]
    if neighbor != "." {
      count += 1
    }
  }

  return count
}

func day04Part2(input: [String]) -> Int {
  var grid = input.toGrid()
  var total = 0

  var canBeRemovedCount = grid.count * grid[0].count
  while canBeRemovedCount > 0 {
    var passSize = 0

    for y in grid.indices {
      for x in grid[y].indices {
        let element = grid[y][x]
        let neighbors = checkNeighbors(grid: grid, x: x, y: y)
        if (element != ".") && neighbors < 4 {
          passSize += 1
          grid[y][x] = "."
        }
      }
    }

    canBeRemovedCount = passSize
    total += passSize
  }

  return total
}
