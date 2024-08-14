//
//  FlipTheCoinView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct FlipTheCoinView: View {
    
    @State private var degrees = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Text("50")
                    .font(.system(size: 120))
                    .padding(40)
                    .background(.blue)
                    .clipShape(.circle)
                    .rotation3DEffect(.degrees(180.0 + degrees), axis: (x: 0, y: 1, z: 0))
                Text("50")
                    .font(.system(size: 120))
                    .padding(40)
                    .background(.red)
                    .clipShape(.circle)
            }
            .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
            
            Slider(value: $degrees, in: 0...180)
        }
    }
}

#Preview {
    FlipTheCoinView()
}
