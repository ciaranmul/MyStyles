import Foundation
import CoreGraphics

#if canImport(UIKit)
import UIKit
#endif

public struct MyStyles {

    public static func registerFonts() {
        CustomFonts.allCases.forEach { font in
            registerFont(bundle: .module, fontName: font.rawValue, fontExtension: "ttf")
        }
    }
}

fileprivate func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
    guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
          let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
          let font = CGFont(fontDataProvider) else {
              fatalError("Couldn't create font from filename: \(fontName) with extension \(fontExtension)")
          }

    var error: Unmanaged<CFError>?

    CTFontManagerRegisterGraphicsFont(font, &error)
}

enum CustomFonts: String, CaseIterable {
    case gtAmericaRegular = "gt-america-regular"
    case easyNotes = "easy-notes"
    case customerCopy = "customer-copy"
    case jetbrainsMono = "jetbrains-mono-medium"
}
