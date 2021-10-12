import Foundation
import CoreText
import CoreGraphics

enum CustomFonts: String, CaseIterable {
    case gtAmericaRegular = "gt-america-regular"
    case easyNotes = "easy-notes"
}

public struct MyStyles {

    public static func registerFonts() {
        CustomFonts.allCases.forEach { font in
            registerFont(named: font.rawValue)
        }
    }

    static func registerFont(named name: String, ext: String = "ttf") {
        guard let url = Bundle.module.url(forResource: name, withExtension: ext) else {
            print("could not find font file: \(name).\(ext)")
            return
        }
        print("registering font at \(url.absoluteString)")
        guard let fontDataProvider = CGDataProvider(url: url as CFURL) else {
            print("Could not create font data provider for \(url).")
            return
        }
        guard let font = CGFont(fontDataProvider) else {
            print("could not create font")
            return
        }
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            guard let error = error else { print("Unknown error occured when registering font: \(font.fullName.debugDescription)"); return }
            print(error.takeUnretainedValue())
        }
    }
}

