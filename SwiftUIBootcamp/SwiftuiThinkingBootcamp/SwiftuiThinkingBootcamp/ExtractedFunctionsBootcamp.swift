//
//  ExtractedFunctionsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor.ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
       //content
        VStack {
            Text("Text")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            })
        }
    }
    
    //outside the body View
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
