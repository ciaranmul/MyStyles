//
//  TestReferenceAppApp.swift
//  TestReferenceApp
//
//  Created by Aidan Malone on 14/10/2021.
//

import SwiftUI
import MyStyles

protocol ShowcaseableColor {
    associatedtype ViewType: View

    static var showCaseView: ViewType { get }
}

extension MyColor: ShowcaseableColor {}

@main
struct TestReferenceAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
