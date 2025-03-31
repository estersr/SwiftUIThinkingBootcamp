//
//  SafeAreaInsetBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            .navigationTitle("Safe area insets")
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
