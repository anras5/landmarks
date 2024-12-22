//
//  ContentView.swift
//  landmarks
//
//  Created by Filip Marciniak on 22/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
