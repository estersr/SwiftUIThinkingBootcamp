//
//  BackgroundandOverlayBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 30/01/25.
//

import SwiftUI

struct BackgroundandOverlayBootcamp: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay (
            Rectangle()
                .fill(Color.blue)
                .frame(width: 10, height: 50,
                       alignment: .topLeading)
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150, alignment: .bottomTrailing)
            )
        
        
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 110, height: 110)
//            )
//        
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//          
//            .background(
//               // Color.red
//               // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                .frame(width: 120, height: 120, alignment: .center)
//            )
    }
}

#Preview {
    BackgroundandOverlayBootcamp()
}
