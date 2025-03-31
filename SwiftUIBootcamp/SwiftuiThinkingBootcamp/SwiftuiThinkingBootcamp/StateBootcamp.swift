//
//  StateBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    //We could just change the let backgroundColor to a var, and SwiftUI would know that the color is changebale. HOWEVER, OUR VIEW, the one the conforms to our struct doesnt, so we use @State, so the View know.
    
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = ("Button 1 was pressed")
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = ("Button 2 was pressed")
                        count -= 1
                    }
                }
                
            }
            .foregroundStyle(.white)
   
        }
    }
}

#Preview {
    StateBootcamp()
}
