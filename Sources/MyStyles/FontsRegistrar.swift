//
//  File.swift
//  
//
//  Created by Ciarán Mulholland on 12/10/2021.
//

import Foundation
import CoreGraphics
import CoreText

private enum CustomFonts: String, CaseIterable {
    case gtAmericaRegular = "gt-america-regular"
    case easyNotes = "easy-notes"
}

protocol CanRegisterFonts {
    static func registerFonts()
}

public class FontsRegistrar: CanRegisterFonts {
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
