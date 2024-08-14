//
//  ScrollViewEffectsContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct ScrollViewEffectsContentView: View {
    
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        // Option 1
        //        ScrollView {
        //            ForEach(0..<50) { index in
        //                GeometryReader { proxy in
        //                    Text("Row #\(index)")
        //                        .font(.title)
        //                        .frame(maxWidth: .infinity)
        //                        .background(colors[index % 7])
        //                        .rotation3DEffect(.degrees(proxy.frame(in: .global).minY / 5), axis: (x: 0, y: 1, z: 0))
        //                }
        //                .frame(height: 40)
        //            }
        //        }
        
        // Option 2
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
        
        // Option 3
        //        ScrollView(.horizontal, showsIndicators: false) {
        //            HStack(spacing: 0) {
        //                ForEach(1..<20) { num in
        //                    GeometryReader { proxy in
        //                        Text("Number #\(num)")
        //                            .font(.largeTitle)
        //                            .padding()
        //                            .background(.red)
        //                            .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
        //                                                        .frame(width: 200, height: 200)
        //                    }
        //                    .frame(width: 200, height: 200)
        //                }
        //            }
        //        }
    }
}

#Preview {
    ScrollViewEffectsContentView()
}
