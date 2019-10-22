//
//  ARViewContainer.swift
//  LabWeek-10-2019
//
//  Created by Pete Schuster on 10/22/19.
//  Copyright © 2019 Pete Schuster. All rights reserved.
//

import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer: View {
    var body: some View {
        ARViewComponent()
    }
}

struct ARViewComponent: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()

        guard let trackingImages = ARReferenceImage.referenceImages(inGroupNamed: "foes", bundle: nil) else {
            fatalError("Couldn't load tracking images")
        }

        configuration.trackingImages = trackingImages

        // Run the view's session
        arView.session.run(configuration)
    
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct ARViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ARViewContainer()
    }
}
