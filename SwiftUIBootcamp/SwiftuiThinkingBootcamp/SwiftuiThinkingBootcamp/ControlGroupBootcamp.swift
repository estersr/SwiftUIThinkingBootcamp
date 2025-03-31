//
//  ControlGroupBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 31/03/25.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My menu") {
            
            ControlGroup() {
                Button("one") {}
                Button("two") {}
            }
                         
            Button("First Option") {}
            Button("Second Option") {}
            
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
