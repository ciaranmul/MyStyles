import SwiftUI

public typealias MyColor = Color

// MARK: - Functional Color Tokens

extension MyColor {

    // MARK: - Surfaces

    public static let surface: MyColor = .neutral1
    public static let background: MyColor = .neutral2

    // MARK: - Content

    public static let content: MyColor = .neutral9
    public static let contentSubtle: MyColor = .neutral6
    public static let contentDisabled: MyColor = .neutral4
    public static let contentSuccess: MyColor = .green2
    public static let contentCritical: MyColor = .red2
    public static let border: MyColor = .neutral3
    public static let divider: MyColor = .neutral3

    // MARK: - Actions

    public static let actionPrimary: MyColor = .red2
    public static let actionPrimaryBold: MyColor = .neutral9
    public static let actionSecondary: MyColor = .neutral2
    public static let actionDisabled: MyColor = .neutral2
    public static let actionIcon: MyColor = .neutral2

    // MARK: - Rating Scale

    public static let rating9: MyColor = .yellow2
    public static let rating8: MyColor = .orange2
    public static let rating7: MyColor = .red2
    public static let rating6: MyColor = .red3
    public static let rating5: MyColor = .neutral9
}

// MARK: - Primitive Color Tokens

private extension MyColor {

    // MARK: - Primary Primitives

    static let red1 = Color("red1")
    static let red2 = Color("red2")
    static let red3 = Color("red3")

    static let neutral1 = Color("neutral1")
    static let neutral2 = Color("neutral2")
    static let neutral3 = Color("neutral3")
    static let neutral4 = Color("neutral4")
    static let neutral5 = Color("neutral5")
    static let neutral6 = Color("neutral6")
    static let neutral7 = Color("neutral7")
    static let neutral8 = Color("neutral8")
    static let neutral9 = Color("neutral9")

    // MARK: - Secondary Primitives

    static let yellow1 = Color("yellow1")
    static let yellow2 = Color("yellow2")
    static let yellow3 = Color("yellow3")

    static let green1 = Color("green1")
    static let green2 = Color("green2")
    static let green3 = Color("green3")

    static let orange1 = Color("orange1")
    static let orange2 = Color("orange2")
    static let orange3 = Color("orange3")
}
