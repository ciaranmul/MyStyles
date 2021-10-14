import Foundation

internal struct SillyTheme: Theming {
    // Surfaces
    var surface: MyColor { .white }
    var surfaceInverse: MyColor { .gray }
    var background: MyColor { .white }
    var backgroundInverse: MyColor { .blue }
    
    // Content
    var content: MyColor { .blue }
    var contentInverse: MyColor { .pink }
    var contentSubtle: MyColor { .purple }
    var contentSubtleInverse: MyColor { .primary }
    var contentDisabled: MyColor { .gray }
    var contentDisabledInverse: MyColor { .blue }
    var contentSuccess: MyColor { .blue }
    var contentSuccessInverse: MyColor { .red }
    var contentCritical: MyColor { .green }
    var contentCriticalInverse: MyColor { .yellow }
    var border: MyColor { .yellow }
    var borderInverse: MyColor { .red }
    var divider: MyColor { .pink }
    var dividerInverse: MyColor { surface }
    
    // Actions
    var actionPrimary: MyColor { .black }
    var actionPrimaryInverse: MyColor { .green }
    var actionPrimaryBold: MyColor { .black }
    var actionPrimaryBoldInverse: MyColor { .pink }
    var actionSecondary: MyColor { .blue }
    var actionSecondaryInverse: MyColor { .orange }
    var actionDisabled: MyColor { .orange }
    var actionDisabledInverse: MyColor { .red }
    var actionIcon: MyColor { .red }
    
    // Rating scale
    var rating9: MyColor { .yellow }
    var rating9Inverse: MyColor { rating9 }
    var rating8: MyColor { .orange }
    var rating8Inverse: MyColor { rating8 }
    var rating7: MyColor { .red }
    var rating7Inverse: MyColor { rating7 }
    var rating6: MyColor { .red }
    var rating6Inverse: MyColor { rating6 }
    var rating5: MyColor { .gray }
    var rating5Inverse: MyColor { rating5 }
}
