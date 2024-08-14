//
//  CustomAlignmentGuideContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignmentGuideContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@er7santana")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                Image(.eliezer)
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("Full name:")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                Text("ELIEZER SANT' ANA")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    CustomAlignmentGuideContentView()
}
