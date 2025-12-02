extension Collection {

  func windowed(size: Int, partial: Bool = true, operation: (SubSequence) -> Void) {
    guard size > 0 else { return }

    var current = self.startIndex

    while current < self.endIndex {
      guard let end = index(current, offsetBy: size, limitedBy: self.endIndex) else {
        if partial {
          let slice = self[current..<self.endIndex]
          operation(slice)
        }
        break
      }

      let slice = self[current..<end]
      operation(slice)
      current = end
    }
  }

  func chunked(size: Int, partial: Bool = true) -> [SubSequence] {
    var chunks = [SubSequence]()
    windowed(size: size, partial: partial) {
      chunks.append($0)
    }
    return chunks
  }
}
