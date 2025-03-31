//
//  TernaryBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            //you can add the ternary operator in pretty much everything
            
            Text(isStartingState ? "Starting State" : "Ending state")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
        }
    }
}

#Preview {
    TernaryBootcamp()
}
