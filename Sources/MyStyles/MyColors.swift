import SwiftUI

public typealias MyColor = Color

extension MyColor {

    // MARK: - Surfaces

    public static let surface: MyColor = .neutral1
    public static let background: MyColor = .neutral2

    // MARK: - Content

    public static let content: MyColor = .neutral9
    public static let contentSubtle: MyColor = .neutral6
    public static let contentDisabled: MyColor = .neutral4
    //public static let contentSuccess: Color = .green2
    public static let contentCritical: MyColor = .red2
    public static let border: MyColor = .neutral3
    public static let divider: MyColor = .neutral3

    // MARK: - Actions

    public static let actionPrimary: MyColor = .red2
    public static let actionPrimaryBold: MyColor = .neutral9
    public static let actionSecondary: MyColor = .neutral2
    public static let actionDisabled: MyColor = .neutral2
    public static let actionIcon: MyColor = .neutral2

}

extension MyColor {
    static let red1 = Color(hex: "E8A499")
    static let red2 = Color(hex: "C54531")
    static let red3 = Color(hex: "822E21")

    static let neutral1 = Color(hex: "FCFCFC")
    static let neutral2 = Color(hex: "F6F6F6")
    static let neutral3 = Color(hex: "E0E0E0")
    static let neutral4 = Color(hex: "BABABA")
    static let neutral5 = Color(hex: "888888")
    static let neutral6 = Color(hex: "595959")
    static let neutral7 = Color(hex: "363636")
    static let neutral8 = Color(hex: "222222")
    static let neutral9 = Color(hex: "191919")
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
