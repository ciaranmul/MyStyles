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

public enum ThemeColor {
    case surface, background
    case content, contentSubtle, contentDisabled, contentSuccess, contentCritical
    case border, divider
    
    case actionPrimary, actionPrimaryBold
    case actionSecondary, actionDisabled, actionIcon
    
    case rating9, rating8, rating7, rating6, rating5
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
    
    // Actions
    func actionPrimary(for colorScheme: ColorScheme) -> MyColor
    func actionPrimaryBold(for colorScheme: ColorScheme) -> MyColor
    func actionSecondary(for colorScheme: ColorScheme) -> MyColor
    func actionDisabled(for colorScheme: ColorScheme) -> MyColor
    func actionIcon(for colorScheme: ColorScheme) -> MyColor
    
    // Ratings
    func rating9(for colorScheme: ColorScheme) -> MyColor
    func rating8(for colorScheme: ColorScheme) -> MyColor
    func rating7(for colorScheme: ColorScheme) -> MyColor
    func rating6(for colorScheme: ColorScheme) -> MyColor
    func rating5(for colorScheme: ColorScheme) -> MyColor
    
    // General
    func color(for themeColor: ThemeColor, colorScheme: ColorScheme) -> MyColor
}

extension Themable {
    func color(for themeColor: ThemeColor, colorScheme: ColorScheme) -> MyColor {
        switch themeColor {
        case .surface:
            return surface(for: colorScheme)
        case .background:
            return background(for: colorScheme)
        case .content:
            return content(for: colorScheme)
        case .contentSubtle:
            return contentSubtle(for: colorScheme)
        case .contentDisabled:
            return contentDisabled(for: colorScheme)
        case .contentSuccess:
            return contentSuccess(for: colorScheme)
        case .contentCritical:
            return contentCritical(for: colorScheme)
        case .border:
            return border(for: colorScheme)
        case .divider:
            return divider(for: colorScheme)
        case .actionPrimary:
            return actionPrimary(for: colorScheme)
        case .actionPrimaryBold:
            return actionPrimaryBold(for: colorScheme)
        case .actionSecondary:
            return actionSecondary(for: colorScheme)
        case .actionDisabled:
            return actionDisabled(for: colorScheme)
        case .actionIcon:
            return actionIcon(for: colorScheme)
        case .rating9:
            return rating9(for: colorScheme)
        case .rating8:
            return rating8(for: colorScheme)
        case .rating7:
            return rating7(for: colorScheme)
        case .rating6:
            return rating6(for: colorScheme)
        case .rating5:
            return rating5(for: colorScheme)
        }
    }
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
        .green2
    }
    
    func contentCritical(for colorScheme: ColorScheme) -> MyColor {
        .red2
    }
    
    func border(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral8
    }
    
    func divider(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral3 : .neutral7
    }
    
    func actionPrimary(for colorScheme: ColorScheme) -> MyColor {
        .red2
    }
    
    func actionPrimaryBold(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral9 : .neutral1
    }
    
    func actionSecondary(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral7
    }
    
    func actionDisabled(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral7
    }
    
    func actionIcon(for colorScheme: ColorScheme) -> MyColor {
        .neutral2
    }
    
    func rating9(for colorScheme: ColorScheme) -> MyColor {
        .yellow2
    }
    
    func rating8(for colorScheme: ColorScheme) -> MyColor {
        .orange2
    }
    
    func rating7(for colorScheme: ColorScheme) -> MyColor {
        .red2
    }
    
    func rating6(for colorScheme: ColorScheme) -> MyColor {
        .red3
    }
    
    func rating5(for colorScheme: ColorScheme) -> MyColor {
        .neutral9
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
    
    func actionPrimary(for colorScheme: ColorScheme) -> MyColor {
        .red2
    }
    
    func actionPrimaryBold(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral9 : .neutral1
    }
    
    func actionSecondary(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral7
    }
    
    func actionDisabled(for colorScheme: ColorScheme) -> MyColor {
        colorScheme.isLightMode ? .neutral2 : .neutral7
    }
    
    func actionIcon(for colorScheme: ColorScheme) -> MyColor {
        .neutral2
    }
    
    func rating9(for colorScheme: ColorScheme) -> MyColor {
        .yellow2
    }
    
    func rating8(for colorScheme: ColorScheme) -> MyColor {
        .orange2
    }
    
    func rating7(for colorScheme: ColorScheme) -> MyColor {
        .red2
    }
    
    func rating6(for colorScheme: ColorScheme) -> MyColor {
        .red3
    }
    
    func rating5(for colorScheme: ColorScheme) -> MyColor {
        .neutral9
    }
}

internal extension ColorScheme {
    var isLightMode: Bool { return self == .light }
    var isDarkMode: Bool { return self == .dark }
}
