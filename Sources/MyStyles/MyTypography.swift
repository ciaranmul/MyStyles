import SwiftUI

enum CustomFont: String {
    case gtAmericaRegular = "GTAmerica-Regular"
    case jetBrainsMono = "JetBrainsMono-Medium"
    case easyNotes = "EasyNotes"
    case customerCopy = "CustomerCopy"

    var ext: String {
        return "ttf"
    }
}

extension CustomFont {
    var registered: Bool {
        switch self {
        case .gtAmericaRegular:
            return CustomFont.gtAmericaRegularRegistered
        case .jetBrainsMono:
            return CustomFont.jetBrainsMonoRegistered
        case .easyNotes:
            return CustomFont.easyNotesRegistered
        case .customerCopy:
            return CustomFont.customerCopyRegistered
        }
    }

    // MARK: - Font Register Functions -

    /* These are static constants, which will be instantiated at first access and then never called again,
       meaning even though we request this every time we request a font, only the first access will do the registration
       and subsequent accesses will get the boolean value */

    private static let gtAmericaRegularRegistered: Bool = {
        FontsRegistrar.registerFont(.gtAmericaRegular)
        return true
    }()

    private static let jetBrainsMonoRegistered: Bool = {
        FontsRegistrar.registerFont(.jetBrainsMono)
        return true
    }()

    private static let easyNotesRegistered: Bool = {
        FontsRegistrar.registerFont(.easyNotes)
        return true
    }()

    private static let customerCopyRegistered: Bool = {
        FontsRegistrar.registerFont(.customerCopy)
        return true
    }()
}

public typealias MyFont = Font

// MARK: - Functional Type Styles

extension MyFont {

    // MARK: - Body

    public static let body17 = MyFont.gtAmericaRegular17
    public static let body15 = MyFont.gtAmericaRegular15
    public static let body13 = MyFont.gtAmericaRegular13
    public static let body12 = MyFont.gtAmericaRegular12

    // MARK: - Handwriting

    public static let handwriting64 = MyFont.easyNotes64
    public static let handwriting44 = MyFont.easyNotes44
    public static let handwriting32 = MyFont.easyNotes32
    public static let handwriting24 = MyFont.easyNotes24

    // MARK: - Receipt

    public static let receipt24 = MyFont.customerCopy24
    public static let receipt18 = MyFont.customerCopy18
    public static let receipt16 = MyFont.customerCopy16

    // MARK: - Price

    public static let price12 = MyFont.jetBrainsMono12
    public static let price12Strikethrough = MyFont.jetBrainsMono12
}

// MARK: - Primitive Type Styles

extension MyFont {

    // MARK: - GT America Regular

    static let gtAmericaRegular19 = Font.custom(.gtAmericaRegular, size: 19)
    static let gtAmericaRegular17 = Font.custom(.gtAmericaRegular, size: 17)
    static let gtAmericaRegular16 = Font.custom(.gtAmericaRegular, size: 16)
    static let gtAmericaRegular15 = Font.custom(.gtAmericaRegular, size: 15)
    static let gtAmericaRegular14 = Font.custom(.gtAmericaRegular, size: 14)
    static let gtAmericaRegular13 = Font.custom(.gtAmericaRegular, size: 13)
    static let gtAmericaRegular12 = Font.custom(.gtAmericaRegular, size: 12)

    // MARK: - JetBrains Mono

    static let jetBrainsMono12 = Font.custom(.jetBrainsMono, size: 12)

    // MARK: - Easy Notes

    static let easyNotes64 = Font.custom(.easyNotes, size: 64)
    static let easyNotes44 = Font.custom(.easyNotes, size: 44)
    static let easyNotes32 = Font.custom(.easyNotes, size: 32)
    static let easyNotes24 = Font.custom(.easyNotes, size: 24)

    // MARK: - Customer Copy

    static let customerCopy24 = Font.custom(.customerCopy, size: 24)
    static let customerCopy18 = Font.custom(.customerCopy, size: 18)
    static let customerCopy16 = Font.custom(.customerCopy, size: 16)
}

private extension Font {
    static func custom(_ font: CustomFont, size: CGFloat) -> Font {
        // Registering the font on first use
        _ = font.registered
        return Font.custom(font.rawValue, size: size)
    }
}
