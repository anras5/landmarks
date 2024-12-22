//
//  landmarksApp.swift
//  landmarks
//
//  Created by Filip Marciniak on 22/12/2024.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
