// These represent the functional tokens
public extension MyColor {

    private static var colorProvider: ColorProvider.Type { ThemingEngine.colorProvider }

    static var token1: MyColor {
        return colorProvider.actionDisabled
    }

    static var token2: MyColor {
        return colorProvider.actionIcon
    }
}

