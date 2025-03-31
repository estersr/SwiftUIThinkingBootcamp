//
//  TransitionBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            //The rectangle will only show when showview is true, if not, its not on the screen
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                 //   .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                //    .transition(AnyTransition.move(edge: .bottom) .animation(.easeInOut))
               //     .animation(.spring(), value: showView)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
