import Foundation

public func readInputAsLines(path: String, trimLines: Bool = true) -> [String] {
  let url =
    if #available(macOS 13.0, *) {
      URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appending(path: path)
    } else {
      URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(path)
    }

  do {
    let content = try String(contentsOf: url, encoding: .utf8)
    let lines = content.components(separatedBy: .newlines)
    return if trimLines {
      lines.filter { !$0.isBlank }
    } else {
      lines
    }
  } catch {
    if #available(macOS 13.0, *) {
      print("Error reading file at \(url.path()): \(error.localizedDescription)")
    } else {
      print("Error reading file at \(url.path): \(error.localizedDescription)")
    }
    return []
  }
}
