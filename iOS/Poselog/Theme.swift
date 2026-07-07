import SwiftUI

/// Bespoke palette for Poselog: sage green, restful.
enum Theme {
    static let accent = Color(hex: "#4FBF8B")
    static let background = Color(hex: "#0E1E18")
    static let foreground = Color(hex: "#EAFFF5")
    static let card = background.opacity(0.6)
    static let titleFont = Font.system(.title2, design: .rounded).weight(.bold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: s).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
