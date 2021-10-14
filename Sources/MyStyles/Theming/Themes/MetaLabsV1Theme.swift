import Foundation

internal struct MetaLabsV1Theme: Theming {
    // Surfaces
    var surface: MyColor { .neutral1 }
    var surfaceInverse: MyColor { .neutral7 }
    var background: MyColor { .neutral2 }
    var backgroundInverse: MyColor { .neutral9 }
    
    // Content
    var content: MyColor { .neutral9 }
    var contentInverse: MyColor { .neutral1 }
    var contentSubtle: MyColor { .neutral6 }
    var contentSubtleInverse: MyColor { .neutral4 }
    var contentDisabled: MyColor { .neutral4 }
    var contentDisabledInverse: MyColor { .neutral6 }
    var contentSuccess: MyColor { .green2 }
    var contentSuccessInverse: MyColor { contentSuccess }
    var contentCritical: MyColor { .red2 }
    var contentCriticalInverse: MyColor { contentCritical }
    var border: MyColor { .neutral3 }
    var borderInverse: MyColor { .neutral8 }
    var divider: MyColor { .neutral3 }
    var dividerInverse: MyColor { .neutral7 }
    
    // Actions
    var actionPrimary: MyColor { .red2 }
    var actionPrimaryInverse: MyColor { actionPrimary }
    var actionPrimaryBold: MyColor { .neutral9 }
    var actionPrimaryBoldInverse: MyColor { .neutral1 }
    var actionSecondary: MyColor { .neutral2 }
    var actionSecondaryInverse: MyColor { .neutral7 }
    var actionDisabled: MyColor { .neutral2 }
    var actionDisabledInverse: MyColor { .neutral7 }
    var actionIcon: MyColor { .neutral5 }
    
    // Rating scale
    var rating9: MyColor { .yellow2 }
    var rating9Inverse: MyColor { rating9 }
    var rating8: MyColor { .orange2 }
    var rating8Inverse: MyColor { rating8 }
    var rating7: MyColor { .red2 }
    var rating7Inverse: MyColor { rating7 }
    var rating6: MyColor { .red3 }
    var rating6Inverse: MyColor { rating6 }
    var rating5: MyColor { .neutral9 }
    var rating5Inverse: MyColor { rating5 }
}
