//
//  AnimationUpdatedBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/03/25.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing:40) {
                Button("action 1") {
                    animate1.toggle()
                }
                
                Button("action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
                
            }
        }
        
        //this animation will only happen when there is a value
        .animation(.spring(), value: animate1)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
