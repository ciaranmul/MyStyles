import Foundation
import CoreGraphics
import CoreText

protocol CanRegisterFonts {
    static func registerFont(_ font: CustomFont)
}

class FontsRegistrar: CanRegisterFonts {
    static func registerFont(_ font: CustomFont) {
        guard let url = Bundle.module.url(forResource: font.rawValue, withExtension: font.ext) else {
            print("could not find font file: \(font.rawValue).\(font.ext)")
            return
        }

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error) {
            guard let error = error else {
                print("Unknown error occured when registering font: \(font.rawValue)")
                return
            }
            print(error.takeUnretainedValue())
        }
    }
}
