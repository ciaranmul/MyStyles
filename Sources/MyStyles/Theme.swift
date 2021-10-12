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
    // Surfaces
    func surface(for colorScheme: ColorScheme) -> MyColor
    func background(for colorScheme: ColorScheme) -> MyColor
    
    // Content
    func content(for colorScheme: ColorScheme) -> MyColor
    func contentSubtle(for colorScheme: ColorScheme) -> MyColor
    func contentDisabled(for colorScheme: ColorScheme) -> MyColor
    func contentSuccess(for colorScheme: ColorScheme) -> MyColor
    func contentCritical(for colorScheme: ColorScheme) -> MyColor
    func border(for colorScheme: ColorScheme) -> MyColor
    func divider(for colorScheme: ColorScheme) -> MyColor
}

public struct Theme { }
public extension Theme {
    static let legacy: Themable = LegacyTheme()
    static let current: Themable = CurrentTheme()
}

internal class LegacyTheme { }

extension LegacyTheme: Themable {
    func surface(for colorScheme: ColorScheme = .light) -> MyColor {
        colorScheme.isLightMode ? .neutral1 : .neutral7
    }
    
    func background(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral9
    }
    
    func content(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral9 : .neutral1
    }
    
    func contentSubtle(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral6 : .neutral4
    }
    
    func contentDisabled(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral4 : .neutral6
    }
    
    func contentSuccess(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .green2 : .green2
    }
    
    func contentCritical(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .red2 : .red2
    }
    
    func border(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral8
    }
    
    func divider(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral7
    }
}

internal class CurrentTheme { }

extension CurrentTheme: Themable {
    func surface(for colorScheme: ColorScheme = .light) -> MyColor {
        colorScheme.isLightMode ? .neutral1 : .neutral7
    }
    
    func background(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral9
    }
    
    func content(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral9 : .neutral1
    }
    
    func contentSubtle(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral6 : .neutral4
    }
    
    func contentDisabled(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral4 : .neutral6
    }
    
    func contentSuccess(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .yellow2 : .yellow2
    }
    
    func contentCritical(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .orange2 : .orange2
    }
    
    func border(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral8
    }
    
    func divider(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral7
    }
}

internal extension ColorScheme {
    var isLightMode: Bool { return self == .light }
    var isDarkMode: Bool { return self == .dark }
}
