import SwiftUI

public typealias MyColor = Color

protocol ColorProvider {
    static var surface: MyColor { get }
    static var background: MyColor { get }
    static var content: MyColor  { get }
    static var contentSubtle: MyColor { get }
    static var contentDisabled: MyColor { get }
    static var contentSuccess: MyColor { get }
    static var contentCritical: MyColor { get }
    static var border: MyColor { get }
    static var divider: MyColor { get }
    static var actionPrimary: MyColor  { get }
    static var actionPrimaryBold: MyColor { get }
    static var actionSecondary: MyColor { get }
    static var actionDisabled: MyColor  { get }
    static var actionIcon: MyColor { get }
    static var rating9: MyColor  { get }
    static var rating8: MyColor { get }
    static var rating7: MyColor { get }
    static var rating6: MyColor { get }
    static var rating5: MyColor { get }
}

// MARK: - These map to primitives for one theme
enum StandardColors: ColorProvider {

    // MARK: - Surfaces

    static let surface: MyColor = .neutral1
    static let background: MyColor = .neutral2

    // MARK: - Content

    static let content: MyColor = .neutral9
    static let contentSubtle: MyColor = .neutral6
    static let contentDisabled: MyColor = .neutral4
    static let contentSuccess: MyColor = .green2
    static let contentCritical: MyColor = .red2
    static let border: MyColor = .neutral3
    static let divider: MyColor = .neutral3

    // MARK: - Actions

    static let actionPrimary: MyColor = .red2
    static let actionPrimaryBold: MyColor = .neutral9
    static let actionSecondary: MyColor = .neutral2
    static let actionDisabled: MyColor = .neutral2
    static let actionIcon: MyColor = .neutral2

    // MARK: - Rating Scale

    static let rating9: MyColor = .yellow2
    static let rating8: MyColor = .orange2
    static let rating7: MyColor = .red2
    static let rating6: MyColor = .red3
    static let rating5: MyColor = .neutral9
}

//MARK: - These map to primatives for a different theme

enum SomeOtherColors: ColorProvider {

    // MARK: - Surfaces

    static let surface: MyColor = .blue
    static let background: MyColor = .red

    // MARK: - Content

    static let content: MyColor = .green
    static let contentSubtle: MyColor = .gray
    static let contentDisabled: MyColor = .white
    static let contentSuccess: MyColor = .black
    static let contentCritical: MyColor = .orange
    static let border: MyColor = .purple
    static let divider: MyColor = .blue

    // MARK: - Actions

    static let actionPrimary: MyColor = .pink
    static let actionPrimaryBold: MyColor = .red
    static let actionSecondary: MyColor = .yellow
    static let actionDisabled: MyColor = .green
    static let actionIcon: MyColor = .black

    // MARK: - Rating Scale

    static let rating9: MyColor = .clear
    static let rating8: MyColor = .orange2
    static let rating7: MyColor = .red2
    static let rating6: MyColor = .red3
    static let rating5: MyColor = .neutral9
}

// MARK: - Primitive Color Tokens

private extension MyColor {

    // MARK: - Primary Primitives

    static let red1 = Color("red1", bundle: .module)
    static let red2 = Color("red2", bundle: .module)
    static let red3 = Color("red3", bundle: .module)

    static let neutral1 = Color("neutral1", bundle: .module)
    static let neutral2 = Color("neutral2", bundle: .module)
    static let neutral3 = Color("neutral3", bundle: .module)
    static let neutral4 = Color("neutral4", bundle: .module)
    static let neutral5 = Color("neutral5", bundle: .module)
    static let neutral6 = Color("neutral6", bundle: .module)
    static let neutral7 = Color("neutral7", bundle: .module)
    static let neutral8 = Color("neutral8", bundle: .module)
    static let neutral9 = Color("neutral9", bundle: .module)

    // MARK: - Secondary Primitives

    static let yellow1 = Color("yellow1", bundle: .module)
    static let yellow2 = Color("yellow2", bundle: .module)
    static let yellow3 = Color("yellow3", bundle: .module)

    static let green1 = Color("green1", bundle: .module)
    static let green2 = Color("green2", bundle: .module)
    static let green3 = Color("green3", bundle: .module)

    static let orange1 = Color("orange1", bundle: .module)
    static let orange2 = Color("orange2", bundle: .module)
    static let orange3 = Color("orange3", bundle: .module)
}
