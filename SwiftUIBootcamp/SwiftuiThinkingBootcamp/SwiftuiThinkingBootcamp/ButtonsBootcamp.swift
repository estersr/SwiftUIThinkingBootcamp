//
//  ButtonsBootcamp.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 01/02/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title" //it was a let and we changed to STATE VAR because let doesnt change so we wouldnt be able to use in our button
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!" ){
                self.title = "button was pressed"
            }
            .accentColor(.red) //change the color of the button
            
            Button(action: {
                self.title = "Button number 2 was pressed"
            }, label: {
                //here its better because label is where u costumize the looks of buttons
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Button 3"
            }
            , label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundStyle(Color.red)
                    
                    )
            })
            
            Button(action: {
                
            }
                   
                   , label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
