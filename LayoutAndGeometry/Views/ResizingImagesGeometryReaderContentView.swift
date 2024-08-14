//
//  ResizingImagesGeometryReaderContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct ResizingImagesGeometryReaderContentView: View {
    var body: some View {
        
        VStack {
            GeometryReader { proxy in
                Image(.example)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
            
            HStack {
                Text("IMPORTANT")
                    .frame(width: 200)
                    .background(.blue)
                
                GeometryReader { proxy in
                    Image(.example)
                        .resizable()
                        .scaledToFit()
                        .frame(width: proxy.size.width * 0.8)
                        .frame(width: proxy.size.width, height: proxy.size.height)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ResizingImagesGeometryReaderContentView()
}
