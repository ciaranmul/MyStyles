import Foundation
import SwiftUI

extension View {
    public func themeType(_ themeType: ThemeType) -> some View {
        return self
            .environment(\.themeEngine, ThemeEngine(themeType: themeType))
    }
    
    public func themeEngine(_ themeEngine: ThemeEngine) -> some View {
        return self
            .environment(\.themeEngine, themeEngine)
    }
}
