//
//  BindingBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
        
    }
}

struct ButtonView: View {
    //you cant just create another State var in here for the backgroundColor, cause they wouldnt be connected. You need to create a variable that connects to the backgroundColor of the other view
    
    //you could also give a different name here for the variable but usually people use the same
    @Binding var backgroundColor: Color
    
    @State var buttonColor: Color = Color.blue
    
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = Color.pink
            title = "NEW TITLE"
        }
               , label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
