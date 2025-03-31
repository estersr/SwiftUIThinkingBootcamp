//
//  AnimationTimingBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
  //  let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            
            //❇️ this is the most common pop up for screen, using spring
            //   .animation(.spring(), value: isAnimating)
            //❇️ here is how you costumize spring:
                .animation(.spring(
                    response: 1.0, //(the timing)
                    dampingFraction: 3.0, //no bouncing back
                    blendDuration: 1.0
                ), value: isAnimating)
            
            
            
            // .animation(.linear(duration: timing), value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/0/*@END_MENU_TOKEN@*/)
            
            // .animation(Animation.linear, value: isAnimating)
            //we are talking about the speed. in Linear, it goes in the same speed to the end.
            
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(width: isAnimating ? 350 : 50, height: 100)
            //                .animation(Animation.easeIn(duration: timing), value: isAnimating)
            //            //easeIn: it will go slow at first and slow at the end
            //
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(width: isAnimating ? 350 : 50, height: 100)
            //                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            //            //easeInOut: slow-fast-slow
            //
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(width: isAnimating ? 350 : 50, height: 100)
            //                .animation(Animation.easeOut(duration: timing), value: isAnimating)
            //            //easeOut: fast and then slow.
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
