//
//  ContentView.swift
//  MiradorTest
//
//  Created by Allana Corrêa on 20/07/23.
//

import SwiftUI
import RealityKit
import Mirador

struct ContentView: View {
    static func locationAnchorFromJSON() -> LocationAnchor? {
        guard let filePath = Bundle.main.path(forResource: "ipanema", ofType: ".json") else {
            return nil
        }

        return LocationAnchor.anchorFromFile(atPath: filePath)
    }

    var body: some View {
        ZStack {
            if let locationAnchor = ContentView.locationAnchorFromJSON() {
                let miradorViewContainer = MiradorViewContainer(locationAnchor: locationAnchor)
                miradorViewContainer
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        miradorViewContainer.miradorView.run()
                    }
                    .onDisappear {
                        miradorViewContainer.miradorView.pause()
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
