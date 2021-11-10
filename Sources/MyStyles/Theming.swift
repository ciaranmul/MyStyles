public enum Theme {
    case standard
    case different

    static let fallback: Theme = .standard
}

public class ThemingEngine {
    private static var theme: Theme = .fallback {
        didSet {
            colorProvider = theme.colorProvider
        }
    }

    private(set) static var colorProvider: ColorProvider.Type = theme.colorProvider

    static func registerTheme(theme: Theme) {
        Self.theme = theme
    }
}

private extension Theme {
    var colorProvider: ColorProvider.Type {
        switch self {
        case .standard: return StandardColors.self
        case .different: return SomeOtherColors.self
        }
    }
}
