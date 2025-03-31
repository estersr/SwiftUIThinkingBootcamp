//
//  ConditionalBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 02/02/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing:20) {
            Button("is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            }
            
            
            
            
            
//            Button("Circle Button \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            //this here is the same of if showcircle == false
//           // if !showCircle
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 200)
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            }
//            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
