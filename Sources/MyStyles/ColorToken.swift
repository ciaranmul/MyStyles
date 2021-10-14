import Foundation

// MARK: - Functional Color Tokens

public enum ColorToken {
    // Surfaces
    case surface, surfaceInverse
    case background, backgroundInverse
    
    // Content
    case content, contentInverse
    case contentSubtle, contentSubtleInverse
    case contentDisabled, contentDisabledInverse
    case contentSuccess, contentSuccessInverse
    case contentCritical, contentCriticalInverse
    case border, borderInverse
    case divider, dividerInverse
    
    // Actions
    case actionPrimary, actionPrimaryInverse
    case actionPrimaryBold, actionPrimaryBoldInverse
    case actionSecondary, actionSecondaryInverse
    case actionDisabled, actionDisabledInverse
    case actionIcon
    
    // Ratings
    case rating9, rating9Inverse
    case rating8, rating8Inverse
    case rating7, rating7Inverse
    case rating6, rating6Inverse
    case rating5, rating5Inverse
}
