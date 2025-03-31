//
//  GradientsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //  Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
//                               startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
//                               endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                //❇️ we can change the startpoint and endpoint, to .topleading, .bottomtrailling etc
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                //❇️this gradient is circular
                AngularGradient(colors: [Color.red, Color.blue],
                                center: .topLeading,
                                angle: .degrees(180 + 45))
                
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
