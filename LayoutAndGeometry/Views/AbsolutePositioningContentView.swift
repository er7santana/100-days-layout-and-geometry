//
//  AbsolutePositioningContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct AbsolutePositioningContentView: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
            .offset(x: 100, y: 100)
    }
}

#Preview {
    AbsolutePositioningContentView()
}
