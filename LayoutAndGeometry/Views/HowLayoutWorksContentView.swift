//
//  HowLayoutWorksContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct HowLayoutWorksContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in Double(position) * -10 }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    HowLayoutWorksContentView()
}
