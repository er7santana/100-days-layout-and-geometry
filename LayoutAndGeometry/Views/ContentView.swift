//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("How layout works in SwiftUI") {
                    HowLayoutWorksContentView()
                }
                NavigationLink("How to create a custom alignment guide") {
                    CustomAlignmentGuideContentView()
                }
                NavigationLink("Absolute positioning for SwiftUI views") {
                    AbsolutePositioningContentView()
                }
                NavigationLink("Santander Login Screen") {
                    SantanderLoginContentView()
                }
                NavigationLink("Resizing images to fit the screen using GeometryReader") {
                    ResizingImagesGeometryReaderContentView()
                }
                NavigationLink("Understanding frames and coordinates inside GeometryReader") {
                    CoordinatesInsideGeometryReaderContentView()
                }
                NavigationLink("ScrollView effects using GeometryReader") {
                    ScrollViewEffectsContentView()
                }
                NavigationLink("ScrollView effects using visualEffect() and scrollTargetBehavior()") {
                    VisualEffectScrollTargetBehaviorContentView()
                }
            }
            .navigationTitle("Project 18")
        }
    }
}

#Preview {
    ContentView()
}
