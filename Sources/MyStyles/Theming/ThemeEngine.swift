import Foundation
import SwiftUI

public class ThemeEngine: ObservableObject {
    @Published private(set) public var currentThemeType: ThemeType
    
    public var currentTheme: Theming {
        currentThemeType.theme
    }
    
    public init(themeType: ThemeType = .default) {
        self.currentThemeType = themeType
    }
    
    public func set(_ themeType: ThemeType) {
        self.currentThemeType = themeType
    }
    
    func color(for colorToken: ColorToken) -> MyColor {
        currentThemeType.theme.color(for: colorToken)
    }
}

private struct ThemeEngineKey: EnvironmentKey {
    static let defaultValue: ThemeEngine = ThemeEngine()
}

extension EnvironmentValues {
    public var themeEngine: ThemeEngine {
        get { self[ThemeEngineKey.self] }
        set { self[ThemeEngineKey.self] = newValue }
    }
}
