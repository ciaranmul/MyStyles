import Foundation
import SwiftUI

extension Shape {
    public func stroke(_ colorToken: ColorToken, lineWidth: CGFloat = 1, themeType: ThemeType = .default) -> some View {
        let color = themeType.theme.color(for: colorToken)
        
        return self.stroke(color, lineWidth: lineWidth)
    }
    
    public func stroke(_ colorToken: ColorToken, lineWidth: CGFloat = 1, themeEngine: ThemeEngine) -> some View {
        return self.stroke(colorToken,
                           lineWidth: lineWidth,
                           themeType: themeEngine.currentThemeType)
    }
}

struct ShapeStroke_Previews: PreviewProvider {
     static var previews: some View {
         Group {
             Circle()
                 .stroke(.content, lineWidth: 3)
                 .previewLayout(.fixed(width: 100, height: 100))
                 .padding()
             
             Circle()
                 .stroke(.content, lineWidth: 3, themeType: .silly)
                 .previewLayout(.fixed(width: 100, height: 100))
                 .padding()
         }
     }
}
