//
//  PaddingAndSpacerBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is a text of many multiple lines that will display on the screen")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                        x:0.0, y:0.0
                       )
        )
        .padding(.horizontal, 10)
        
//            .background(Color.yellow)
//            //.padding()
//            .padding(.all, 20) // ❇️ padding is t10 by default, u can use this padding to edit how much space you want, and you can keep adding padding after padding.
//            .background(Color.blue)
   }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
