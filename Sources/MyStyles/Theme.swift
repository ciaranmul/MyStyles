import SwiftUI

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: Themable = Theme.current
}

public extension EnvironmentValues {
    var theme: Themable {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

public protocol Themable {
    func surfaceColor(for colorScheme: ColorScheme) -> MyColor
    func backgroundColor(for colorScheme: ColorScheme) -> MyColor
}

public struct Theme { }
public extension Theme {
    static let legacy: Themable = LegacyTheme()
    static let current: Themable = CurrentTheme()
}

internal class LegacyTheme { }

extension LegacyTheme: Themable {
    func surfaceColor(for colorScheme: ColorScheme = .light) -> MyColor {
        colorScheme.isLightMode ? .neutral1 : .neutral7
    }
    
    func backgroundColor(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral9
    }
}

internal class CurrentTheme { }

extension CurrentTheme: Themable {
    func surfaceColor(for colorScheme: ColorScheme = .light) -> MyColor {
        colorScheme.isLightMode ? .neutral1 : .neutral7
    }
    
    func backgroundColor(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral9
    }
}

internal extension ColorScheme {
    var isLightMode: Bool { return self == .light }
    var isDarkMode: Bool { return self == .dark }
}
