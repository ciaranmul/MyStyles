import Foundation
import SwiftUI

internal struct ThemedForegroundColorModifier: ViewModifier {
    @Environment(\.themeEngine) internal var themeEngine
    
    var colorToken: ColorToken
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(themeEngine.currentTheme.color(for: colorToken))
    }
    
    init(_ colorToken: ColorToken) {
        self.colorToken = colorToken
    }
}

extension View {
    public func foregroundColor(_ colorToken: ColorToken) -> some View {
        modifier(
            ThemedForegroundColorModifier(colorToken)
        )
    }
}

struct ThemedForegroundColorModifier_Previews: PreviewProvider {
     static var previews: some View {
         Group {
             Text("Hi")
                 .previewLayout(.fixed(width: 100, height: 100))
                 .foregroundColor(.content)
             
             Text("Hi")
                 .previewLayout(.fixed(width: 100, height: 100))
                 .foregroundColor(.content)
                 .themeType(.silly)
         }
     }
 }
