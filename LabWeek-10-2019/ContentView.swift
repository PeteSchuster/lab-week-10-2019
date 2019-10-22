//
//  ViewController.swift
//  SpotTheScientist
//
//  Created by Paul Hudson on 28/04/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var foes = [String: Foe]()
    @State var totalClicked: Int = 0

    var body: some View {
        ZStack {
            ARViewContainer().edgesIgnoringSafeArea(.all)
            VStack {
                Text("\(totalClicked)")
                Button(action: {self.totalClicked = self.totalClicked + 1}) {
                    Text("Increment Total")
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
