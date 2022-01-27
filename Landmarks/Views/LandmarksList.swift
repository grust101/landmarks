//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Georgia Rust on 1/27/22.
//

import SwiftUI

struct LandmarksList: View{
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks : [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                LandmarkRow(landmark: landmark)
                }
            .navigationTitle("Landmarks")
            }
        }
    }
}
    

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
                    }
                }

