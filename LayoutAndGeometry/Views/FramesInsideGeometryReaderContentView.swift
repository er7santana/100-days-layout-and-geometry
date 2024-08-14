//
//  FramesInsideGeometryReaderContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct FramesInsideGeometryReaderContentView: View {
    var body: some View {
        VStack {
            GeometryReader { proxy in
                Text("Hello world")
                    .frame(width: proxy.size.width * 0.9, height: 40)
                    .background(.red)
            }
            .background(.green)
            
            Text("More text")
                .background(.blue)
        }
    }
}

#Preview {
    FramesInsideGeometryReaderContentView()
}
