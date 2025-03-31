//
//  ToggleBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 11/02/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(toggleIsOn ? "On" : "Off")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn ,
                   label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    ToggleBootcamp()
}
