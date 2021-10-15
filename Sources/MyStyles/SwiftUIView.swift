//
//  SwiftUIView.swift
//  
//
//  Created by Aidan Malone on 15/10/2021.
//

import SwiftUI

struct Model {
    init() {
        // comment out one or both to either change themes, or test defaulting
//        ThemingEngine.registerTheme(theme: .different)
        ThemingEngine.registerTheme(theme: .standard)
    }
}

struct SwiftUIView: View {
    let model = Model()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.token1)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView().previewLayout(.fixed(width: 375, height: 77))
        SwiftUIView().preferredColorScheme(.dark).previewLayout(.fixed(width: 375, height: 77))
    }
}
