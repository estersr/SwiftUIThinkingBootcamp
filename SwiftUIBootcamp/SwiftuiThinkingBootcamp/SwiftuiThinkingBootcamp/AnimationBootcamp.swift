//
//  AnimationBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    
    var body: some View {
        VStack {
            Button("Button") {
                
                
//Using only toggle works to switch the colors, however, its a quick and instant change, sometimes you would want something nicer for the transition of what is happening. for that, you would use withAnimation.
                withAnimation(Animation
                    .default
                    .repeatCount(5, autoreverses: false)) {
                        isAnimated.toggle()
                        
 //we can add .delay to decide the time for thw switch
//.repeatForever so its going to animate as long as the user is on the screen
                    }
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50: 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300 ,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            //offset moves objetcs up, down, left and right
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
