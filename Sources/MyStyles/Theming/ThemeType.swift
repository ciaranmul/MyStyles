import Foundation
import SwiftUI

public enum ThemeType: String {
    case legacy, metalabsv1, silly
    
    public static var `default`: ThemeType = .legacy
    
    public var title: String {
        switch self {
        case .legacy:       return "Legacy"
        case .metalabsv1:   return "MetaLabs"
        case .silly:        return "Silly"
        }
    }
    
    public var description: String {
        switch self {
        case .legacy:       return "Our Legacy theme"
        case .metalabsv1:   return "The MetaLabs theme"
        case .silly:        return "A Silly theme"
        }
    }
    
    internal var theme: Theming {
        switch self {
        case .legacy:       return LegacyTheme()
        case .metalabsv1:   return MetaLabsV1Theme()
        case .silly:        return SillyTheme()
        }
    }
}

extension ThemeType: CaseIterable { }

extension ThemeType: Identifiable {
    public var id: String { rawValue }
}
