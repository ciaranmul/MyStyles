import Foundation
import SwiftUI

internal struct ThemedBackgroundColorModifier: ViewModifier {
    @Environment(\.themeEngine) internal var themeEngine
    
    var colorToken: ColorToken
    
    func body(content: Content) -> some View {
        content
            .background(themeEngine.currentTheme.color(for: colorToken))
    }
    
    init(_ colorToken: ColorToken) {
        self.colorToken = colorToken
    }
}

extension View {
    public func background(_ colorToken: ColorToken) -> some View {
        modifier(
            ThemedBackgroundColorModifier(colorToken)
        )
    }
}

struct ThemedBackgroundColorModifier_Previews: PreviewProvider {
     static var previews: some View {
         Group {
             Text("Hi")
                 .padding()
                 .previewLayout(.fixed(width: 100, height: 100))
                 .foregroundColor(.white)
                 .background(.content)
                 
             
             Text("Hi")
                 .padding()
                 .previewLayout(.fixed(width: 100, height: 100))
                 .background(.content)
                 .foregroundColor(.white)
                 .themeType(.silly)
         }
     }
 }
