//
//  SpacerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer(minLength: 0)
            Rectangle()
                .frame(width: 100, height: 100)
            
        }
    }
}

#Preview {
    SpacerBootcamp()
}
