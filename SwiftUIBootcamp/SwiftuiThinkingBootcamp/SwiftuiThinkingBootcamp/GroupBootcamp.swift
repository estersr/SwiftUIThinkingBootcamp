//
//  GroupBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("hello world")
            
            Group {
                Text("hello world")
                Text("hello world")
            }
            .font(.title2)
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    GroupBootcamp()
}
