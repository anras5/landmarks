//
//  LandmarkList.swift
//  landmarks
//
//  Created by Filip Marciniak on 22/12/2024.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(modelData.landmarks) {landmark in
                    if !showFavoritesOnly || landmark.isFavorite {
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }

                }
            }
            .animation(.default, value: showFavoritesOnly)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
