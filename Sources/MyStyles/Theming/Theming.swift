import Foundation

public protocol Theming {
    // Surfaces
    var surface: MyColor { get }
    var surfaceInverse: MyColor { get }
    var background: MyColor { get }
    var backgroundInverse: MyColor { get }
    
    // Content
    var content: MyColor { get }
    var contentInverse: MyColor { get }
    var contentSubtle: MyColor { get }
    var contentSubtleInverse: MyColor { get }
    var contentDisabled: MyColor { get }
    var contentDisabledInverse: MyColor { get }
    var contentSuccess: MyColor { get }
    var contentSuccessInverse: MyColor { get }
    var contentCritical: MyColor { get }
    var contentCriticalInverse: MyColor { get }
    var border: MyColor { get }
    var borderInverse: MyColor { get }
    var divider: MyColor { get }
    var dividerInverse: MyColor { get }
    
    // Actions
    var actionPrimary: MyColor { get }
    var actionPrimaryInverse: MyColor { get }
    var actionPrimaryBold: MyColor { get }
    var actionPrimaryBoldInverse: MyColor { get }
    var actionSecondary: MyColor { get }
    var actionSecondaryInverse: MyColor { get }
    var actionDisabled: MyColor { get }
    var actionDisabledInverse: MyColor { get }
    var actionIcon: MyColor { get }
    
    // Ratings
    var rating9: MyColor { get }
    var rating9Inverse: MyColor { get }
    var rating8: MyColor { get }
    var rating8Inverse: MyColor { get }
    var rating7: MyColor { get }
    var rating7Inverse: MyColor { get }
    var rating6: MyColor { get }
    var rating6Inverse: MyColor { get }
    var rating5: MyColor { get }
    var rating5Inverse: MyColor { get }
    
    // General
    func color(for colorToken: ColorToken) -> MyColor
}

extension Theming {
    func color(for colorToken: ColorToken) -> MyColor {
        switch colorToken {
        case .surface:                  return surface
        case .surfaceInverse:           return surfaceInverse
        case .background:               return background
        case .backgroundInverse:        return backgroundInverse
        case .content:                  return content
        case .contentInverse:           return contentInverse
        case .contentSubtle:            return contentSubtle
        case .contentSubtleInverse:     return contentSubtleInverse
        case .contentDisabled:          return contentDisabled
        case .contentDisabledInverse:   return contentDisabledInverse
        case .contentSuccess:           return contentSuccess
        case .contentSuccessInverse:    return contentSuccessInverse
        case .contentCritical:          return contentCritical
        case .contentCriticalInverse:   return contentCriticalInverse
        case .border:                   return border
        case .borderInverse:            return borderInverse
        case .divider:                  return divider
        case .dividerInverse:           return dividerInverse
        case .actionPrimary:            return actionPrimary
        case .actionPrimaryInverse:     return actionPrimaryInverse
        case .actionPrimaryBold:        return actionPrimaryBold
        case .actionPrimaryBoldInverse: return actionPrimaryBoldInverse
        case .actionSecondary:          return actionSecondary
        case .actionSecondaryInverse:   return actionSecondaryInverse
        case .actionDisabled:           return actionDisabled
        case .actionDisabledInverse:    return actionDisabledInverse
        case .actionIcon:               return actionIcon
        case .rating9:                  return rating9
        case .rating9Inverse:           return rating9Inverse
        case .rating8:                  return rating8
        case .rating8Inverse:           return rating8Inverse
        case .rating7:                  return rating7
        case .rating7Inverse:           return rating7Inverse
        case .rating6:                  return rating6
        case .rating6Inverse:           return rating6Inverse
        case .rating5:                  return rating5
        case .rating5Inverse:           return rating5Inverse
        }
    }
}
