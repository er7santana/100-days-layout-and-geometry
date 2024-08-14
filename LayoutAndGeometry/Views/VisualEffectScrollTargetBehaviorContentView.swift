//
//  VisualEffectScrollTargetBehaviorContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct VisualEffectScrollTargetBehaviorContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { num in
                    Text("Number #\(num)")
                        .font(.largeTitle)
                        .padding()
                        .background(.redDark1)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX / 8), axis: (x: 0, y: 1, z: 0))
                        }
                }
            }
        }
    }
}

#Preview {
    VisualEffectScrollTargetBehaviorContentView()
}
