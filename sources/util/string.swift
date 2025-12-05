extension String {

  var isBlank: Bool {
    self.allSatisfy { $0.isWhitespace }
  }
}
