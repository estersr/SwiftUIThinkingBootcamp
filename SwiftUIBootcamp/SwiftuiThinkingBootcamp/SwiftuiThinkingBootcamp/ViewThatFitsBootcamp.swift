//
//  ViewThatFitsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("display text here because it is too long as it should be truncated")
                Text("display text here because it is too long ")
                Text("display text d")
            }
                .lineLimit(1)
                .minimumScaleFactor(0.3)
        }
        .frame(height: 300)
        .padding(16)
        .font(.title)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
